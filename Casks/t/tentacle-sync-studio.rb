cask "tentacle-sync-studio" do
  version "1.37"
  sha256 "383cd519b647594254ffc6deb744e47c5f939932d96711a60158e6e40d2fe16e"

  url "https://cms.tentaclesync.com/assets/ttsyncstudio-v#{version.dots_to_underscores}.dmg"
  name "Tentacle Sync Studio"
  desc "Automatically synchronise video and audio via timecode"
  homepage "https://tentaclesync.com/"

  livecheck do
    url "https://tentaclesync.com/downloads/tentacle-sync-studio-macos"
    regex(/ttsyncstudio[._-]v?(\d+(?:[._-]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :big_sur"

  app "Tentacle Sync Studio.app"

  zap trash: [
    "~/Library/Caches/com.tentaclesync.Tentacle-Sync-Studio",
    "~/Library/Preferences/com.tentaclesync.Tentacle-Sync-Studio.plist",
  ]
end
