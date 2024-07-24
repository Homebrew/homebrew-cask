cask "replay" do
  version "91.13.1,9124.3.18"
  sha256 :no_check

  url "https://static.replay.io/downloads/replay.dmg"
  name "Replay"
  desc "Time travel debugging"
  homepage "https://replay.io/"

  deprecate! date: "2024-07-24", because: :discontinued

  depends_on macos: ">= :sierra"

  app "Replay.app"

  zap trash: [
    "~/Library/Application Support/Replay",
    "~/Library/Caches/RecordReplayInc",
    "~/Library/Caches/Replay",
    "~/Library/Preferences/org.mozilla.replay.plist",
    "~/Library/Saved Application State/org.mozilla.replay.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
