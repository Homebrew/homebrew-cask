cask "deltachat" do
  arch arm: "arm64", intel: "universal"

  version "2.52.0"
  sha256 arm:   "5726e9294150b8270e881f20bc2f16cc3edeaeae563240a5c7ece3f2158f5789",
         intel: "2cdc5c4eb4d641632e412d994cae4d481a81131014fff9610b2178317c31a02c"

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
    "~/Library/Application Support/CrashReporter/DeltaChat *_*.plist",
    "~/Library/Application Support/DeltaChat",
    "~/Library/Containers/chat.delta.desktop.electron",
    "~/Library/Group Containers/*.chat.delta.desktop.electron",
    "~/Library/Preferences/chat.delta.desktop.electron.plist",
    "~/Library/Saved Application State/chat.delta.desktop.electron.savedState",
  ]
end
