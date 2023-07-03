cask "outline" do
  version "3.2305.0"
  sha256 "74b2be3df41928aa714b1d2193d21df18643a8a69f6a02fcb5f252f1b0a0b7ef"

  url "https://static.outline.ws/versions/Outline_#{version}.zip",
      verified: "static.outline.ws/"
  name "Outline"
  desc "Note taking app"
  homepage "https://outline.app/"

  livecheck do
    url "https://gorillized.s3.amazonaws.com/versions/update_channel.xml"
    strategy :sparkle, &:short_version
  end

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
