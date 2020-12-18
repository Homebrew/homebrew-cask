cask "deltachat" do
  version "1.14.0"
  sha256 "5894ff5fb3b7938b945ead2afd4290f2a78fcd4e1b6899c4e46c0fe08d1b3f25"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}.dmg",
      verified: "github.com/deltachat/deltachat-desktop/"
  appcast "https://github.com/deltachat/deltachat-desktop/releases.atom"
  name "DeltaChat"
  desc "Chat via the e-mail server network"
  homepage "https://delta.chat/"

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
