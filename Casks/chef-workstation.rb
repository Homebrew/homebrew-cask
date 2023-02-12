cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"
  macos_version = on_arch_conditional arm: "11", intel: "10.15"

  version "23.2.1028"
  sha256 arm:   "07ce65d16bb51e3b8afa3064dbbf5a6e6fb96a9372532d973f0539c7d370beea",
         intel: "5853e671b308e51127bd383a3523d9a522965dc5fb1942b9e7bffe7077f9adf0"

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
