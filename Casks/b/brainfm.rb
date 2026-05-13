cask "brainfm" do
  arch arm: "arm64", intel: "x64"

  version "0.0.281"
  sha256 arm:   "3f12db46d0dcee36a0181264bc6d24d2ffc098d93018f8da401844ecc4a0bfda",
         intel: "8fd29306fe9bdf965f577f27466e16c0a43f26c0eece27009f9b6c4fa90c5237"

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
