cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"
  macos_version = on_arch_conditional arm: "11", intel: "10.15"

  version "23.3.1030"
  sha256 arm:   "b5b83d11263361acb4168bc9f7389a757d2308d1e514cd8197538c8ed09e639d",
         intel: "3ae94de385dfe859446668bd42e17d8938c5d38989f112257938e6621a9fef8d"

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
