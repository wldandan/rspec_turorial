require_relative '../lib/user'

describe User do
  it "should be in any roles assigned to it" do
    subject.assign_role("Admin")
    expect(subject).to be_in_role("Admin")
  end

  it "should NOT be in any roles not assigned to it" do
    expect(subject).not_to be_in_role("Admin")
  end

  
end
