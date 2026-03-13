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
    version "25.13.7"
    sha256 arm:   "9d8f3c9ea48aea18192d3356d655e92a6d822853239fe016436f7f17186284f1",
           intel: "88e5c93fb060bb7574db4bd1c06763656b6a1b221ae194fae03e7d64ed75f010"

    url "https://downloads.cinc.sh/files/stable/cinc-workstation/#{version}/mac_os_x/12/cinc-workstation-#{version}-1.#{arch}.dmg"

    livecheck do
      url "https://omnitruck.cinc.sh/stable/cinc-workstation/metadata?p=mac_os_x&pv=12&m=#{arch}&v=latest"
      regex(/version\s*(\d+(?:\.\d+)+)/i)
    end
  end
  on_ventura :or_newer do
    version "25.13.7"
    sha256 arm:   "c3341af080428e5f38966ed5317560c334508622a8983305bcfe5dd9ca3da1c4",
           intel: "d7854c6786cfd78cd4ae3b9562f2f098a107c840fef94252344c5a0e819917e4"

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
