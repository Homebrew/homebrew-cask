cask "cinc-workstation" do
  arch arm: "arm64", intel: "x86_64"

  version "23.7.1042"
  sha256 arm:   "5c2276b6ee88a2cbfe937fe4d79496f5e7e557fa1bada079c6c3faa84a854594",
         intel: "4c85d68eca2ce661a4b18d6eaac1e593ce948a27f0db702e251efa2917ed8ca8"

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
