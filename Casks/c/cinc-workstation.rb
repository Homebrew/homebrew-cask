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
    version "25.12.1102"
    sha256 arm:   "9d8f3c9ea48aea18192d3356d655e92a6d822853239fe016436f7f17186284f1",
           intel: "88e5c93fb060bb7574db4bd1c06763656b6a1b221ae194fae03e7d64ed75f010"

    url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/12/cinc-workstation-#{version}-1.#{arch}.dmg"

    livecheck do
      url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=12&m=#{arch}&v=latest"
      regex(/version\s*(\d+(?:\.\d+)+)/i)
    end
  end
  on_ventura :or_newer do
    version "25.12.1102"
    sha256 arm:   "08e64b40f75f94f70c5c74abd3cf9d2dd1c71c2e8bb971608bcc2355b65807d2",
           intel: "83051977c4d81e8eb8810fb057698a01e41d6abed2a59aeaa1014e24a5d701a2"

    url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/13/cinc-workstation-#{version}-1.#{arch}.dmg"

    livecheck do
      url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=13&m=#{arch}&v=latest"
      regex(/version\s*(\d+(?:\.\d+)+)/i)
    end
  end

  name "Cinc Workstation"
  desc "Installer for Chef infrastructure management tools"
  homepage "https://cinc.sh/start/workstation/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
