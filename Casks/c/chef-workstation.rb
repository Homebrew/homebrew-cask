cask "chef-workstation" do
  arch arm: "arm64", intel: "x86_64"

  macos_version = "11"

  version "24.6.1066"
  sha256 arm:   "bb63f4ba1f147dcf51cfbd4a6189f5f2a5c183e6d8823d050bf814a15e039893",
         intel: "6f9922c33f70c3aef038f1bbdd950235726bf38f103b5f31f615d9af45d949db"

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
