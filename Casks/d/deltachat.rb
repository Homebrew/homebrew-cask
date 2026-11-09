cask "deltachat" do
  arch arm: "arm64", intel: "universal"

  version "2.65.0"
  sha256 arm:   "809bd2e7a9172d90eb87f1a7cb9d90b7050a3690df0f18aa2002b2cc497f18fb",
         intel: "06de0a1f58e1a504f310eb6d091f373ee266761a51438fca3749cf83f4534be4"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}-#{arch}.dmg"
  name "Delta Chat"
  desc "Secure and reliable decentralised instant messenger"
  homepage "https://delta.chat/"

  livecheck do
    url "https://delta.chat/en/download"
    regex(/href=.*?DeltaChat[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

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
