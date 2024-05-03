cask "cinc-workstation" do
  arch arm: "arm64", intel: "x86_64"

  version "24.4.1064"
  sha256 arm:   "4365418ae6f2387cc925fede5245bb40e8c7432629728a546bed625efe2f20bb",
         intel: "85752c80079b9a9d2038bbdaba30b764f8dd2dfb23f62652e68592e9dea917ce"

  url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/11/cinc-workstation-#{version}-1.#{arch}.dmg"
  name "Cinc Workstation"
  desc "Installer for Chef infrastructure management tools"
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
