cask "elgato-wave-link" do
  version "1.10.1.2293"
  sha256 "d6829107c01adc5cc92e059e23e1891d1e2c53a1da0f50cb4ddd7989fc9bee7b"

  url "https://edge.elgato.com/egc/macos/wavelink/#{version.major_minor_patch}/WaveLink_#{version}.pkg",
      user_agent: :fake
  name "Elgato Wave Link"
  desc "Software custom-built for content creation"
  homepage "https://www.elgato.com/ww/en/s/downloads"

  livecheck do
    url "https://gc-updates.elgato.com/mac/wl-update/final1/app-version-check.json.php"
    strategy :json do |json|
      json.dig("Manual", "Version")
    end
  end

  depends_on macos: ">= :catalina"

  pkg "WaveLink_#{version}.pkg"

  uninstall launchctl: "com.elgato.WaveLink",
            quit:      "com.elgato.WaveLink",
            pkgutil:   "com.elgato.pkg.WaveLink",
            delete:    "/Applications/Elgato Wave Link.app"

  zap trash: [
    "~/Library/Logs/WaveLink",
    "~/Library/Preferences/com.elgato.WaveLink.plist",
  ]
end
