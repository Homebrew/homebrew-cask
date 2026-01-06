cask "deltachat" do
  arch arm: "arm64", intel: "universal"

  version "2.35.0"
  sha256 arm:   "0356459747b87f61c38f4731c69a8adcdd14ffe96a30c003036cd7ad64464924",
         intel: "95f929e1a4c0e77057fc6c015774a7d612e7b8869f09af10b14e2bd7a24dde9d"

  url "https://download.delta.chat/desktop/v#{version}/DeltaChat-#{version}-#{arch}.dmg"
  name "Delta Chat"
  desc "Secure and reliable decentralised instant messenger"
  homepage "https://delta.chat/"

  livecheck do
    url "https://delta.chat/en/download"
    regex(/href=.*?DeltaChat[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

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
