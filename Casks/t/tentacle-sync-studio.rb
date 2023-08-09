cask "tentacle-sync-studio" do
  version "1.30"
  sha256 "4f7bdaef85b78f576babac91d57da3b3276cc98a2f81ac621bea96a48fe8796a"

  url "https://tentaclesync.com/files/downloads/ttsyncstudio-v#{version.dots_to_underscores}.dmg"
  name "Tentacle Sync Studio"
  desc "Automatically synchronize video and audio via timecode"
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
