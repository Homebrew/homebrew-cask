cask "airstats" do
  version "1.4"
  sha256 "5888362bbca31914c9ec2c80541e9717e59e0eaf56ef0e846d28619015fe49c7"

  url "https://github.com/byrencheema/airstats/releases/download/v#{version}/AirStats.dmg"
  name "AirStats"
  desc "Menu bar system monitor"
  homepage "https://airstats.app/"

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "AirStats.app"

  uninstall quit: "com.airstat.AirStats"

  zap trash: [
    "~/Library/Application Support/AirStats",
    "~/Library/Caches/com.airstat.AirStats",
    "~/Library/HTTPStorages/com.airstat.AirStats",
    "~/Library/Preferences/com.airstat.AirStats.plist",
  ]
end
