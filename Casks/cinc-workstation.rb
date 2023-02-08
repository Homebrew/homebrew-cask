cask "cinc-workstation" do
  version "22.12.1024"
  sha256 "c297e32e79dd30bddd643f39af532a5a3148a62e52193c261a3ea289786004e9"

  url "http://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/10.15/cinc-workstation-#{version}-1.x86_64.dmg"
  name "Cinc Workstation"
  desc "Free-as-in-Beer all-in-one installer for Chef infrastructure management tools"
  homepage "https://cinc.sh/start/workstation/"

  livecheck do
    url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=10.15&m=x86_64&v=latest"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "cinc-workstation-#{version}-1.x86_64.pkg"

  uninstall pkgutil:   "com.cinc-project.pkg.cinc-workstation",
            launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/cinc-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            }

  zap trash: "~/.cinc-workstation/"
end
