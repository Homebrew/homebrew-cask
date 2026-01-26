cask "outline" do
  version "6.2601.1"
  sha256 "70771ee416ed0d70d19d4c9bbe6e316e2d809f58ed4e59efcc5879593f21b976"

  url "https://static.outline.app/direct/main/Outline_#{version}.zip"
  name "Outline"
  desc "Note taking app"
  homepage "https://www.outline.app/"

  livecheck do
    url "https://static.outline.app/direct/main/update_channel.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Outline.app"

  zap trash: [
    "~/Library/Application Scripts/6WN928JT76.com.gorillized",
    "~/Library/Application Scripts/com.gorillized.outlinemac.standalone.extension",
    "~/Library/Application Support/com.gorillized.outlinemac.standalone",
    "~/Library/Caches/com.gorillized.outlinemac.standalone",
    "~/Library/Containers/com.gorillized.outlinemac.standalone.extension",
    "~/Library/Group Containers/6WN928JT76.com.gorillized",
    "~/Library/Outline",
    "~/Library/Preferences/com.gorillized.outlinemac.standalone.plist",
  ]
end
