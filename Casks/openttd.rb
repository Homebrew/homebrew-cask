cask "openttd" do
  on_high_sierra :or_older do
    version "1.11.2"
    sha256 "44f7e08b806124cce8d99c5adc906eb4280ba8057609b8c309080d63fcfb17c2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "13.3"
    sha256 "8e61fbcbd8b6ca8fc5a2840c5683ff0ee7d75949a8d6df7596cd5f6578d5635a"

    livecheck do
      url "https://www.openttd.org/downloads/openttd-releases/latest.html"
      regex(%r{href=.*?/openttd-(\d+(?:\.\d+)*)-macos-universal\.zip}i)
    end
  end

  url "https://proxy.binaries.openttd.org/openttd-releases/#{version}/openttd-#{version}-macos-universal.zip"
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
