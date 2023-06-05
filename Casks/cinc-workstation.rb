cask "cinc-workstation" do
  arch arm: "arm64", intel: "x86_64"

  version "23.5.1040"
  sha256 arm:   "5ca699f0f431c692ec440c39b8f8f3a131b3667a0ce3b71684ba0a0fc3a7720b",
         intel: "9ed638912d2175b0aa853d0e00406b49d38e7ccd8661926464b7198be1e56e1c"

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

  uninstall pkgutil:   "com.cinc-project.pkg.cinc-workstation",
            launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/cinc-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            }

  zap trash: "~/.cinc-workstation/"
end
