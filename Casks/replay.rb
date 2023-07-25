cask "replay" do
  version :latest
  sha256 :no_check

  url "https://replay.io/downloads/replay.dmg"
  name "Replay"
  desc "Time travel debugging"
  homepage "https://replay.io/"

  app "Replay.app"

  zap trash: [
    "~/Library/Application Scripts/com.apple.replayKit.RPBroadcastActivityExtension-macOS",
    "~/Library/Application Scripts/com.apple.replayKit.RPVideoEditorExtension-macOS",
    "~/Library/Application Support/Replay",
    "~/Library/Application Support/com.apple.replayd",
    "~/Library/Caches/RecordReplayInc",
    "~/Library/Caches/Replay",
    "~/Library/Containers/com.apple.replayKit.RPBroadcastActivityExtension-macOS",
    "~/Library/Containers/com.apple.replayKit.RPVideoEditorExtension-macOS",
    "~/Library/Preferences/com.apple.TelephonyUtilities.sharePlayAppPolicies.plist",
    "~/Library/Preferences/org.mozilla.replay.plist",
    "~/Library/Saved Application State/org.mozilla.replay.savedState",
  ]
end
