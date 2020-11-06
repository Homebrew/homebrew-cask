cask "deltachat" do
  version "1.13.1"
  sha256 "4d8caae65438917a9e4841155a131cd58a5e6bcd9787b8bb018165f2922d90a2"

  # github.com/deltachat/deltachat-desktop/ was verified as official when first introduced to the cask
  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}.dmg"
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
