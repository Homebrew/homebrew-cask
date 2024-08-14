cask "cinc-workstation" do
  arch arm: "arm64", intel: "x86_64"

  on_big_sur do
    version "24.4.1064"
    sha256 arm:   "4365418ae6f2387cc925fede5245bb40e8c7432629728a546bed625efe2f20bb",
           intel: "85752c80079b9a9d2038bbdaba30b764f8dd2dfb23f62652e68592e9dea917ce"

    url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/11/cinc-workstation-#{version}-1.#{arch}.dmg"

    livecheck do
      url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=11&m=#{arch}&v=latest"
      regex(/version\s*(\d+(?:\.\d+)+)/i)
    end
  end
  on_monterey do
    version "24.8.1068"
    sha256 arm:   "f9fa01568f9418bc9f82749dc61f6cd5fe777828479e858280a7cc39266a9825",
           intel: "9bb22f2efacf87d957dd35421859004513858b00b11bc0f461195f54e0a8e2b2"

    url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/12/cinc-workstation-#{version}-1.#{arch}.dmg"

    livecheck do
      url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=12&m=#{arch}&v=latest"
      regex(/version\s*(\d+(?:\.\d+)+)/i)
    end
  end
  on_ventura :or_newer do
    version "24.8.1068"
    sha256 arm:   "c4138a28b7837494c8a35c423cfb1acdcf3734e9821a9758279f6e2f8979bf16",
           intel: "4aa7c4b31a21ffbe128f2fb4206c8284c1ae19ffcc8e43d9270057bd533f7da2"

    url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/13/cinc-workstation-#{version}-1.#{arch}.dmg"

    livecheck do
      url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=13&m=#{arch}&v=latest"
      regex(/version\s*(\d+(?:\.\d+)+)/i)
    end
  end

  name "Cinc Workstation"
  desc "Installer for Chef infrastructure management tools"
  homepage "https://cinc.sh/start/workstation/"

  depends_on macos: ">= :big_sur"

  pkg "cinc-workstation-#{version}-1.#{arch}.pkg"

  uninstall launchctl: "io.chef.chef-workstation.app",
            script:    {
              executable: "/opt/cinc-workstation/bin/uninstall_chef_workstation",
              sudo:       true,
            },
            pkgutil:   "com.cinc-project.pkg.cinc-workstation"

  zap trash: "~/.cinc-workstation/"
end
