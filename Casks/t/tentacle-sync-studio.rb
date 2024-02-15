cask "tentacle-sync-studio" do
  version "1.34"
  sha256 "e2ec89770d20a892575e870c35d5bf5bdd5e4cdce5a82c4549159554ce6fad3d"

  url "https://tentaclesync.com/files/downloads/ttsyncstudio-v#{version.dots_to_underscores}.dmg"
  name "Tentacle Sync Studio"
  desc "Automatically synchronise video and audio via timecode"
  homepage "https://tentaclesync.com/"

  livecheck do
    url "https://tentaclesync.zendesk.com/api/v2/help_center/en-us/articles/115003866805"
    regex(%r{href=.*?/ttsyncstudio-v?(\d+(?:[._-]\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Tentacle Sync Studio.app"

  zap trash: [
    "~/Library/Caches/com.tentaclesync.Tentacle-Sync-Studio",
    "~/Library/Preferences/com.tentaclesync.Tentacle-Sync-Studio.plist",
  ]
end
