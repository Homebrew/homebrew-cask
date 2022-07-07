cask "chef-workstation" do
  arch, macos_version = Hardware::CPU.intel? ? ["x86_64", "10.15"] : ["arm64", "11"]

  version "22.7.1006"

  if Hardware::CPU.intel?
    sha256 "6706e3c22248b1a0727f382e26c115d808457f04677f97a09432bfd77d2e5d92"
  else
    sha256 "f01815513f0e820dc036cabf1bef04b4beca37b1869b3a3e8b206942b6d0469d"
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
