cask "outline" do
  version "4.2406.0"
  sha256 "1ee126271074a350a8bff3fde0a530976be783f8e2428c294de28453d53fcd80"

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
