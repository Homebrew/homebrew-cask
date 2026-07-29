cask "deltachat" do
  arch arm: "arm64", intel: "universal"

  version "2.57.0"
  sha256 arm:   "7c988374e9bba2f184c871279598f2b13d75ab0792acbd67093c80dd9dad9783",
         intel: "452b4a3d1e668e33c4af4c8838f3b0271ac6d13183234ed017151af18a633af0"

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
