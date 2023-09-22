cask "replay" do
  version "91.13.1,9123.9.20"
  sha256 :no_check

  url "https://static.replay.io/downloads/replay.dmg"
  name "Replay"
  desc "Time travel debugging"
  homepage "https://replay.io/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "Replay.app"

  zap trash: [
    "~/Library/Application Support/Replay",
    "~/Library/Caches/RecordReplayInc",
    "~/Library/Caches/Replay",
    "~/Library/Preferences/org.mozilla.replay.plist",
    "~/Library/Saved Application State/org.mozilla.replay.savedState",
  ]
end
