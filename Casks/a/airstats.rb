cask "airstats" do
  version "1.5"
  sha256 "0b32e328e21ce79c58fc1e47cd79d6d7fe3d66d5de538f108e44bebf53c8e770"

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
