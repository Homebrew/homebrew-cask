cask "openttd" do
  on_high_sierra :or_older do
    version "1.11.2"
    sha256 "44f7e08b806124cce8d99c5adc906eb4280ba8057609b8c309080d63fcfb17c2"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "13.4"
    sha256 "085cdb35867dca1dcfb8a1748417e7ba6431551ebc33df290a4e48b244d8d376"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "14.1"
    sha256 "68954bbfb941a599c9b2e017d56e12b64794f2494b4d41d308d66167e53fc6c5"

    livecheck do
      url "https://cdn.openttd.org/openttd-releases/latest.yaml"
      strategy :yaml do |yaml|
        yaml["latest"]&.map do |item|
          next if item["name"] != "stable"
          next if item["version"].blank?

          item["version"].to_s
        end
      end
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
