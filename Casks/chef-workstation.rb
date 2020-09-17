cask "chef-workstation" do
  version "20.9.136"
  sha256 "72cacf3591508e8e7aaa75f011274c8539dc0d7b168eb265a0c544d238927e88"

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/10.15/chef-workstation-#{version}-1.dmg"
  appcast "https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=10.15&m=x86_64&v=latest"
  name "Chef Workstation"
  homepage "https://docs.chef.io/workstation/"

  depends_on macos: ">= :high_sierra"

  pkg "chef-workstation-#{version}-1.pkg"

  uninstall quit:      "sh.chef.chef-workstation",
            pkgutil:   "com.getchef.pkg.chef-workstation",
            launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/chef-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            }

  zap trash: "~/.chef-workstation/"
end
