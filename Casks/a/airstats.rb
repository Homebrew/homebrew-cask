cask "airstats" do
  version "1.7"
  sha256 "7c321daf6d0ffc04c36666d64692269eab98d93c7e458d0964e724977b0daa9e"

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
