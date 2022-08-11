cask "deltachat" do
  version "1.32.0"
  sha256 "16261aeaa409dfb9b5f00e5b8c725df01190fc7c81fa67f7e80ef94caedc4a69"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}.dmg"
  name "DeltaChat"
  desc "Chat via the e-mail server network"
  homepage "https://delta.chat/"

  livecheck do
    url "https://github.com/deltachat/deltachat-desktop"
    strategy :github_latest
  end

  app "DeltaChat.app"

  zap trash: [
    "~/Library/Application Scripts/chat.delta.desktop.electron",
    "~/Library/Application Support/CrashReporter/DeltaChat *_*.plist",
    "~/Library/Application Support/DeltaChat",
    "~/Library/Containers/chat.delta.desktop.electron",
    "~/Library/Group Containers/*.chat.delta.desktop.electron",
    "~/Library/Preferences/chat.delta.desktop.electron.plist",
    "~/Library/Saved Application State/chat.delta.desktop.electron.savedState",
  ]
end
