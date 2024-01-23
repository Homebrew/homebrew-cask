cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"

  macos_version = "11"

  version "24.1.1056"
  sha256 arm:   "9d51eeefc36b9b05fee27e9b35cf45fe062d9539e52b48f5246e275d70681434",
         intel: "72c8e59fb2f64ded9e38dae578e39653e46b21663079d80cb2db88deb517ca1d"

  url "https://packages.chef.io/files/current/chef-workstation/#{version}/mac_os_x/#{macos_version}/chef-workstation-#{version}-1.#{arch}.dmg"
  name "Chef Workstation"
  desc "All-in-one installer for the tools you need to manage your Chef infrastructure"
  homepage "https://docs.chef.io/workstation/"

  livecheck do
    url "https://omnitruck.chef.io/current/chef-workstation/metadata?p=mac_os_x&pv=#{macos_version}&m=#{arch}&v=latest"
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
