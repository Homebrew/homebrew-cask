cask "chef-workstation" do
  version "21.2.303"
  sha256 "60ec2d6a7fcb294af0ee471a1a236a52d05c3e15f7720009f488975ef49b8f1d"

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/10.15/chef-workstation-#{version}-1.x86_64.dmg"
  appcast "https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=10.15&m=x86_64&v=latest"
  name "Chef Workstation"
  desc "All-in-one installer for the tools you need to manage your Chef infrastructure"
  homepage "https://docs.chef.io/workstation/"

  depends_on macos: ">= :high_sierra"

  pkg "chef-workstation-#{version}-1.x86_64.pkg"

  uninstall quit:      "sh.chef.chef-workstation",
            pkgutil:   "com.getchef.pkg.chef-workstation",
            launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/chef-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            }

  zap trash: "~/.chef-workstation/"
end
