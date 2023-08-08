cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"
  macos_version = on_arch_conditional arm: "11", intel: "10.15"

  version "23.7.1042"
  sha256 arm:   "267fced9714b8342895ce003bbec0122e158cb91d62a5910fc33fdc02d4e651a",
         intel: "ab27e3aebc8e56fb16919e294628993769d0203b07964cc2c0c99724575260ee"

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
            launchctl: [
              "io.chef.chef-workstation",
              "io.chef.chef-workstation.app",
            ],
            script:    {
              executable: "/opt/chef-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            }

  zap trash: "~/.chef-workstation/"
end
