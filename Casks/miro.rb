cask "miro" do
  arch = Hardware::CPU.intel? ? "darwin" : "darwin-arm64"

  version "0.7.2"
  sha256 :no_check

  url "https://desktop.miro.com/platforms/#{arch}/Miro.dmg"
  name "Miro"
  name "RealtimeBoard"
  desc "Online collaborative whiteboard platform"
  homepage "https://miro.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Miro.app"

  zap trash: [
    "~/Library/Preferences/com.electron.realtimeboard.plist",
    "~/Library/Saved Application State/com.electron.realtimeboard.savedState",
  ]
end
