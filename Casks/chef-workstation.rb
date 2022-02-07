cask "chef-workstation" do
  arch, macos_version = Hardware::CPU.intel? ? ["x86_64", "10.15"] : ["arm64", "11"]

  version "22.1.778"

  if Hardware::CPU.intel?
    sha256 "b957dca3a7be28373a718e95f88290c5be928985ac08b37b8c83b1ac1330d4db"
  else
    sha256 "728ff9458a7f73618a9a34ccd5cb41962ce061f2d67ef2e58e19dd0251c528a5"
  end

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/#{macos_version}/chef-workstation-#{version}-1.#{arch}.dmg"
  name "Chef Workstation"
  desc "All-in-one installer for the tools you need to manage your Chef infrastructure"
  homepage "https://docs.chef.io/workstation/"

  livecheck do
    url "https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=#{macos_version}&m=#{arch}&v=latest"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  pkg "chef-workstation-#{version}-1.#{arch}.pkg"

  uninstall quit:      "sh.chef.chef-workstation",
            pkgutil:   "com.getchef.pkg.chef-workstation",
            launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/chef-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            }

  zap trash: "~/.chef-workstation/"
end
