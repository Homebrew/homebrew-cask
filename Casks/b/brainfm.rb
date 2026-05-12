cask "brainfm" do
  arch arm: "arm64", intel: "x64"

  version "0.0.279"
  sha256 arm:   "31b7b3be1695f1f4009e37712c2f56e92c2f5d13ea6cb5e4ae311928a2f26b7e",
         intel: "c9696aaa660ffc9420f620257b141a2782420da3110fc58f10d44af36d8d39e0"

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
