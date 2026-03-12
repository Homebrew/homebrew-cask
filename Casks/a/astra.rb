cask "astra" do
  version "0.4.0-beta"
  sha256 "cb0972eed075f0f4bae943eeb5c0b06f60dbdbd7f73d79b0e59803997a77a47a"

  url "https://github.com/Boof2015/astra/releases/download/v#{version}/Astra-#{version}-Mac-arm64.dmg"

  name "Astra"
  desc "Audiophile music player with advanced visualization"
  homepage "https://github.com/Boof2015/astra"

  depends_on arch: :arm64

  app "Astra.app"

  zap trash: [
    "~/Library/Application Support/Astra",
    "~/Library/Caches/com.astra.musicplayer",
    "~/Library/Logs/Astra",
    "~/Library/Preferences/com.astra.musicplayer.plist",
  ]
end
