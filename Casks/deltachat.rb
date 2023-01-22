cask "deltachat" do
  version "1.34.1"
  sha256 "e246bc688ea7215e1fe6bda28f5305246e280e47e927fe5c259ffe503f106f5e"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}.dmg"
  name "DeltaChat"
  desc "Chat via the e-mail server network"
  homepage "https://delta.chat/"

  livecheck do
    url "https://delta.chat/en/download"
    regex(/href=.*?DeltaChat[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
