cask "minimal-clock" do
  version "1.0.1"
  sha256 "cdb1c636696d927f5331e97469f824b9b8960aac2548df377e6066fa4e3b855b"

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
    "~/Library/Preferences/com.ImJustIvaan.MimClock.plist",
  ]
end
