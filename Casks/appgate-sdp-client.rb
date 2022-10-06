cask "appgate-sdp-client" do
  version "6.0.2"
  sha256 "e052052094b5c92d94c74128bca3f1c90fef65b3bf441342d889a9b74ed58ac6"

  on_high_sierra :or_older do
    version "5.3.3"
    sha256 "935c87fcec29c6c7ab28ced0b3da8bb98db7f6b51303c3d651c53b14fc17fcbd"

    livecheck do
      skip "Legacy version for High Sierra and earlier"
    end
  end

  url "https://bin.appgate-sdp.com/#{version.major_minor}/client/Appgate-SDP-#{version}-Installer.dmg",
      verified: "bin.appgate-sdp.com/"
  name "AppGate SDP Client for macOS"
  desc "Software-defined perimeter for secure network access"
  homepage "https://www.appgate.com/support/software-defined-perimeter-support"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Appgate-SDP[._-](\d+(?:\.\d+)+)[._-]Installer\.dmg}i)
    strategy :page_match do |page, regex|
      support_versions =
        page.scan(%r{href=["']?([^"' >]*?/software-defined-perimeter-support/sdp[._-]v?(\d+(?:[.-]\d+)+))["' >]}i)
            .sort_by { |match| Version.new(match[1]) }
      next [] if support_versions.blank?

      # Assume the last-sorted version is newest
      version_page_path, = support_versions.last

      # Check the page for the newest major/minor version, which links to the
      # latest disk image file (containing the full version in the file name)
      version_page = Homebrew::Livecheck::Strategy.page_content(
        URI.join("https://www.appgate.com/", version_page_path),
      )
      next [] if version_page[:content].blank?

      version_page[:content].scan(regex).map(&:first)
    end
  end

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
