cask "openttd" do
  on_high_sierra :or_older do
    version "1.11.2"
    sha256 "44f7e08b806124cce8d99c5adc906eb4280ba8057609b8c309080d63fcfb17c2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "14.0"
    sha256 "1a8cc5a92a69d559c85af3bf6e31583ef7acbce2d2664b0401947024c3fd458b"

    livecheck do
      url "https://www.openttd.org/downloads/openttd-releases/latest"
      regex(%r{href=.*?/openttd-(\d+(?:\.\d+)*)-macos-universal\.zip}i)
    end
  end

  url "https://cdn.openttd.org/openttd-releases/#{version}/openttd-#{version}-macos-universal.zip"
  name "OpenTTD"
  desc "Open-source transport simulation game"
  homepage "https://www.openttd.org/"

  app "OpenTTD.app"

  zap trash: [
    "~/Documents/OpenTTD",
    "~/Library/Application Support/CrashReporter/openttd_*.plist",
    "~/Library/Logs/DiagnosticReports/openttd_*.crash",
    "~/Library/Saved Application State/org.openttd.openttd.savedState",
  ]
end
