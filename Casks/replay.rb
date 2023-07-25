cask "replay" do
  version :latest
  sha256 :no_check

  url "https://replay.io/downloads/replay.dmg"
  name "Replay"
  desc "Time travel debugging"
  homepage "https://replay.io/"

  app "Replay.app"

  zap trash: [
    "~/Library/Application Support/Replay",
    "~/Library/Caches/RecordReplayInc",
    "~/Library/Caches/Replay",
    "~/Library/Preferences/org.mozilla.replay.plist",
    "~/Library/Saved Application State/org.mozilla.replay.savedState",
  ]
end
