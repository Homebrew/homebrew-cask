cask "outline" do
  version "4.2404.0"
  sha256 "067d48337c59f35a2f1bc584d06eb7abf75e4832da9598517812ca604f1adae0"

  url "https://static.outline.app/v#{version.major}/Outline_#{version}.zip"
  name "Outline"
  desc "Note taking app"
  homepage "https://www.outline.app/"

  livecheck do
    url "https://gorillized.s3.amazonaws.com/v#{version.major}/update_channel.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

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
