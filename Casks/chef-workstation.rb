cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"
  macos_version = on_arch_conditional arm: "11", intel: "10.15"

  version "22.10.1013"
  sha256 arm:   "73448e48114993ae96fb3bbc2dde140b832f82ea48e4530845c38acaccfe719b",
         intel: "639593ad86dc5f83eae955b1ac658aa20020f5a8565bde47df4ea60ba548d5bd"

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
