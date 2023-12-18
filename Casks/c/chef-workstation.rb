cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"

  macos_version = "11"

  version "23.12.1055"
  sha256 arm:   "9f785db7db24a115e8c0e6fa0dc847438aa60ee794565823099bd0c130bbddf0",
         intel: "cc09b1b1f7fbc25b28176e19839191ed031d23466c9c5155c96de9d5d9ed003c"

  url "https://packages.chef.io/files/stable/chef-workstation/#{version}/mac_os_x/#{macos_version}/chef-workstation-#{version}-1.#{arch}.dmg"
  name "Chef Workstation"
  desc "All-in-one installer for the tools you need to manage your Chef infrastructure"
  homepage "https://docs.chef.io/workstation/"

  livecheck do
    url "https://omnitruck.chef.io/stable/chef-workstation/metadata?p=mac_os_x&pv=#{macos_version}&m=#{arch}&v=latest"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

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
