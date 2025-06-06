cask "brainfm" do
  arch arm: "arm64", intel: "x64"

  version "0.0.198"
  sha256 arm:   "61ef4f27406c6ff9278d6556c8c3b06146668d5a820251ab7c03b70a7454d0ea",
         intel: "ef61b1cfc0ca2cafb56ec631643d0335e46be668911c175c778608d4f7763149"

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
  depends_on macos: ">= :catalina"

  app "Brain.fm.app"

  zap trash: [
    "~/Library/Application Support/Brain.fm",
    "~/Library/Caches/com.electron.brain.fm",
    "~/Library/Caches/com.electron.brain.fm.ShipIt",
    "~/Library/HTTPStorages/com.electron.brain.fm",
    "~/Library/Preferences/com.electron.brain.fm.plist",
  ]
end
