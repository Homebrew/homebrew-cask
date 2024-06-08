cask "appgate-sdp-client" do
  on_mojave :or_older do
    version "5.4.4"
    sha256 "d9d0ffbaf628ee0b8e2d3457dc7b82d1a65ce34952d1f5edc4c4bf407a3d0f1b"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "6.0.4"
    sha256 "bceed509db9fd8dab10f31686264ff7f073048d78470f85f06bbd6233eb9b111"

    livecheck do
      url "https://www.appgate.com/support/software-defined-perimeter-support/sdp-v6-0"
      regex(%r{href=.*?/Appgate[._-]SDP[._-]v?(\d+(?:\.\d+)+)[._-]Installer\.dmg}i)
    end
  end
  on_big_sur :or_newer do
    version "6.3.1"
    sha256 "7c01283fbf9b69498cd4fcb2d2c137296dc8ba1c0ab67f605c1cf1e5320c90bc"

    livecheck do
      url :homepage
      regex(%r{href=.*?/Appgate[._-]SDP[._-]v?(\d+(?:\.\d+)+)[._-]Installer\.dmg}i)
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
          URI.join("https://www.appgate.com/", version_page_path).to_s,
        )
        next [] if version_page[:content].blank?

        version_page[:content].scan(regex).map(&:first)
      end
    end
  end

  url "https://bin.appgate-sdp.com/#{version.major_minor}/client/Appgate-SDP-#{version}-Installer.dmg",
      verified: "bin.appgate-sdp.com/"
  name "AppGate SDP Client for macOS"
  desc "Software-defined perimeter for secure network access"
  homepage "https://www.appgate.com/support/software-defined-perimeter-support"

  depends_on macos: ">= :mojave"

  pkg "AppGate SDP Installer.pkg"

  uninstall launchctl: [
              "com.appgate.sdp.client.agent",
              "com.appgate.sdp.tun",
              "com.appgate.sdp.updater",
              "com.cyxtera.appgate.sdp.client.agent",
              "com.cyxtera.appgate.sdp.helper",
              "com.cyxtera.appgate.sdp.tun",
              "com.cyxtera.appgate.sdp.updater",
            ],
            quit:      [
              "com.appgate.sdp",
              "com.cyxtera.appgate.helper",
              "com.cyxtera.appgate.sdp",
            ],
            signal:    ["QUIT", "com.cyxtera.appgate"],
            pkgutil:   "com.appgate.pkg.appgatetun.component"

  zap trash: [
    "~/Library/Application Support/appgate-ui",
    "~/Library/Caches/com.cyxtera.appgate.sdp.uninstall",
    "~/Library/Preferences/com.cyxtera.appgate.sdp*",
    "~/Library/Saved Application State/com.cyxtera.appgate.sdp.savedState",
  ]
end
