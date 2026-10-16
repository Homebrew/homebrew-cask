cask "airstats" do
  version "1.6"
  sha256 "63189e9f262b9dab708fff0af39b14bd4faa80baa6bdc6e0dc409f2426c82418"

  url "https://github.com/byrencheema/airstats/releases/download/v#{version}/AirStats.dmg"
  name "AirStats"
  desc "Menu bar system monitor"
  homepage "https://airstats.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AirStats.app"

  uninstall quit: "com.airstat.AirStats"

  zap trash: [
    "~/Library/Application Support/AirStats",
    "~/Library/Caches/com.airstat.AirStats",
    "~/Library/HTTPStorages/com.airstat.AirStats",
    "~/Library/Preferences/com.airstat.AirStats.plist",
  ]
end
