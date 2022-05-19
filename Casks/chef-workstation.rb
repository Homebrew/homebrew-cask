cask "chef-workstation" do
  arch, macos_version = Hardware::CPU.intel? ? ["x86_64", "10.15"] : ["arm64", "11"]

  version "22.5.923"

  if Hardware::CPU.intel?
    sha256 "7beea777781f4bb26e414c2a1b7e9a0c0b04537bbbfa783c87abd485e6f60837"
  else
    sha256 "738a6654f6655c03f5d7ca072dd5bcde3046c186719a52128505f5fd7add35c2"
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
