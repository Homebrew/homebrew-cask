cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"

  macos_version = "11"

  version "24.4.1064"
  sha256 arm:   "53539cd05fd56432a1fc2413991b0d8642790b7c6ef8f560b1a84eb6bec6a136",
         intel: "00d6e08c039f74303759cdea7f95a4f9b2748319cafa38929eff142a3739f67b"

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

  uninstall launchctl: [
              "io.chef.chef-workstation",
              "io.chef.chef-workstation.app",
            ],
            quit:      "sh.chef.chef-workstation",
            script:    {
              executable: "/opt/chef-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            },
            pkgutil:   "com.getchef.pkg.chef-workstation"

  zap trash: "~/.chef-workstation/"
end
