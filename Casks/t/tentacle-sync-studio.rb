cask "tentacle-sync-studio" do
  version "1.36"
  sha256 "879118fdabbde5551fb0f0120f73b796dfd94a952954c1199837c58fb2407344"

  url "https://cms.tentaclesync.com/assets/downloads/download-files/ttsyncstudio-v#{version.dots_to_underscores}.dmg"
  name "Tentacle Sync Studio"
  desc "Automatically synchronise video and audio via timecode"
  homepage "https://tentaclesync.com/"

  livecheck do
    url "https://tentaclesync.com/api/collections/downloads/entries"
    regex(/ttsyncstudio[._-]v?(\d+(?:[._-]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :catalina"

  app "Tentacle Sync Studio.app"

  zap trash: [
    "~/Library/Caches/com.tentaclesync.Tentacle-Sync-Studio",
    "~/Library/Preferences/com.tentaclesync.Tentacle-Sync-Studio.plist",
  ]
end
