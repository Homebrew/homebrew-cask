cask "chef-workstation" do
  version "21.4.365"
  sha256 "ec495a0f75927a9600e708e9633d305158abf2a9af345f276898cad85126060b"

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/10.15/chef-workstation-#{version}-1.x86_64.dmg"
  name "Chef Workstation"
  desc "All-in-one installer for the tools you need to manage your Chef infrastructure"
  homepage "https://docs.chef.io/workstation/"

  livecheck do
    url "https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=10.15&m=x86_64&v=latest"
    strategy :page_match
    regex(/version\s*(\d+(?:\.\d+)*)/i)
  end

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
