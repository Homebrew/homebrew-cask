cask "miro" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "0.11.125"
  sha256 :no_check

  url "https://desktop.miro.com/platforms/#{arch}/Install-Miro.dmg"
  name "Miro"
  name "RealtimeBoard"
  desc "Online collaborative whiteboard platform"
  homepage "https://miro.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Miro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.realtimeboard.sfl*",
    "~/Library/Application Support/RealtimeBoard",
    "~/Library/Logs/RealtimeBoard",
    "~/Library/Preferences/com.electron.realtimeboard.plist",
    "~/Library/Saved Application State/com.electron.realtimeboard.savedState",
  ]
end
