cask "appgate-sdp-client" do
  if MacOS.version <= :high_sierra
    version "5.3.3"
    sha256 "935c87fcec29c6c7ab28ced0b3da8bb98db7f6b51303c3d651c53b14fc17fcbd"
  else
    version "5.4.2"
    sha256 "d0880947d92035cb2783f995f69404085096326b24d8d58ba7f83a0411ee8efe"

    livecheck do
      url :homepage
      strategy :page_match do |page|
        page_regex = %r{href=["']?/(support/software-defined-perimeter-support/sdp-v?\d+(?:-\d+)*)["' >]}i
        page.scan(page_regex).flat_map do |match|
          version_page = Homebrew::Livecheck::Strategy.page_content("https://www.appgate.com/#{match[0]}")
          version_regex = %r{href=.*?/Appgate[._-]SDP[._-](\d+(?:\.\d+)*)[._-]Installer\.dmg}i
          version_page[:content].scan(version_regex).map(&:first)
        end
      end
    end
  end

  url "https://bin.appgate-sdp.com/#{version.major_minor}/client/AppGate-SDP-#{version}-Installer.dmg",
      verified: "bin.appgate-sdp.com/"
  name "AppGate SDP Client for macOS"
  desc "Software-defined perimeter for secure network access"
  homepage "https://www.appgate.com/support/software-defined-perimeter-support"

  depends_on macos: ">= :high_sierra"

  pkg "AppGate SDP Installer.pkg"

  uninstall launchctl: [
    "com.cyxtera.appgate.sdp.client.agent",
    "com.cyxtera.appgate.sdp.helper",
    "com.cyxtera.appgate.sdp.tun",
    "com.cyxtera.appgate.sdp.updater",
  ],
            quit:      [
              "com.cyxtera.appgate.helper",
              "com.cyxtera.appgate.sdp",
            ],
            signal:    [
              ["QUIT", "com.cyxtera.appgate"],
            ],
            pkgutil:   "com.appgate.pkg.appgatetun.component"

  zap trash: [
    "~/Library/Application Support/appgate-ui",
    "~/Library/Caches/com.cyxtera.appgate.sdp.uninstall",
    "~/Library/Preferences/com.cyxtera.appgate.sdp*",
    "~/Library/Saved Application State/com.cyxtera.appgate.sdp.savedState",
  ]
end
