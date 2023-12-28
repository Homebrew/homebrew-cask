cask "cinc-workstation" do
  arch arm: "arm64", intel: "x86_64"

  version "23.12.1055"
  sha256 arm:   "a88d53480f9bcd49b2a83bb2854aafbcfba6a510b895a1ab9e4496060c4feafa",
         intel: "f1e3007bfe1e6e496ff08e82a1ca16542bda7e72d948ee04d4c0c359be47f2b0"

  url "http://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/11/cinc-workstation-#{version}-1.#{arch}.dmg"
  name "Cinc Workstation"
  desc "Free-as-in-Beer all-in-one installer for Chef infrastructure management tools"
  homepage "https://cinc.sh/start/workstation/"

  livecheck do
    url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=11&m=#{arch}&v=latest"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "cinc-workstation-#{version}-1.#{arch}.pkg"

  uninstall launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/cinc-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            },
            pkgutil:   "com.cinc-project.pkg.cinc-workstation"

  zap trash: "~/.cinc-workstation/"
end
