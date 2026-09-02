cask "brainfm" do
  arch arm: "arm64", intel: "x64"

  version "0.0.309"
  sha256 arm:   "c421818a5ce9629fbcb5b323ec2ca6b970cec0f28a0db7f5393086a855808b62",
         intel: "1303dddd0229f52fbee75be58a9093539cf63677b4ed4d3895586839d9048df5"

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
