cask "deltachat" do
  arch arm: "arm64", intel: "universal"

  version "2.69.0"
  sha256 arm:   "4c52421984f81791572bcab05629c0ecfe60afcf5e41e7e6b7de965b11995fc0",
         intel: "3f7b585818f4af4a1fc1042073b8dde25a2dc58e9ac434e2ed6479254f84f0a0"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}-#{arch}.dmg"
  name "Delta Chat"
  desc "Secure and reliable decentralised instant messenger"
  homepage "https://delta.chat/"

  livecheck do
    url "https://delta.chat/en/download"
    regex(/href=.*?DeltaChat[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :ventura

  app "DeltaChat.app"

  zap trash: [
    "~/Library/Application Scripts/chat.delta.desktop.electron",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/chat.delta.desktop.electron.sfl*",
    "~/Library/Application Support/CrashReporter/DeltaChat *_*.plist",
    "~/Library/Application Support/DeltaChat",
    "~/Library/Containers/chat.delta.desktop.electron",
    "~/Library/Group Containers/*.chat.delta.desktop.electron",
    "~/Library/Preferences/chat.delta.desktop.electron.plist",
    "~/Library/Saved Application State/chat.delta.desktop.electron.savedState",
  ]
end
