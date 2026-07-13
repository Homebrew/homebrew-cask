cask "minimal-clock" do
  version "1.0.0"
  sha256 "a65067ecab2f31c4fda824f0e4b4666d9baf823fbf522120bc609b9c06be574a"

  url "https://github.com/ImJustIvaan/Minimal-Clock-Desktop/releases/download/v#{version}/MinimalClock.dmg"
  name "Minimal Clock"
  desc "Minimalist clock, timer, and countdown app for the desktop"
  homepage "https://time.ivaan.cc"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Minimal Clock.app"

  zap trash: [
    "~/Library/Preferences/com.minimumclock.minimalClockDesktop.plist",
  ]
end
