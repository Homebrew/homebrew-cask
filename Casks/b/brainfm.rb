cask "brainfm" do
  arch arm: "arm64", intel: "x64"

  version "0.0.327"
  sha256 arm:   "71b2c8b94c67c939c9af86051730cb96b8bc72eaaf5bc7162f4957cdb5d9ff4d",
         intel: "44b33af9aa48136295296f299ba180a33b8c3c04ce3ac6272e4e69d88d0b92c1"

  url "https://download.brain.fm/darwin/#{arch}/Brain.fm-#{version}-#{arch}.dmg"
  name "Brain.fm"
  desc "Desktop client for brain.fm"
  homepage "https://www.brain.fm/download"

  livecheck do
    url "https://storage.googleapis.com/brainfm-desktop-app-v1/production/brain.fm/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Brain.fm.app"

  zap trash: [
    "~/Library/Application Support/Brain.fm",
    "~/Library/Caches/com.electron.brain.fm",
    "~/Library/Caches/com.electron.brain.fm.ShipIt",
    "~/Library/HTTPStorages/com.electron.brain.fm",
    "~/Library/Preferences/com.electron.brain.fm.plist",
  ]
end
