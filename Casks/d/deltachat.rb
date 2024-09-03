cask "deltachat" do
  arch arm: "arm64", intel: "universal"

  version "1.46.7"
  sha256 arm:   "4e8491b1481e99e6135a62488667c82d608a566968b9e811a66dfff0ad990f51",
         intel: "35515d6a56124c5b5e319a136a47beedff2c19ea568d837b7f5d26a81bf89d40"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}-#{arch}.dmg"
  name "DeltaChat"
  desc "Chat via the e-mail server network"
  homepage "https://delta.chat/"

  livecheck do
    url "https://delta.chat/en/download"
    regex(/href=.*?DeltaChat[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

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
