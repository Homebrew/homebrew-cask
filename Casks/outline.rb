cask "outline" do
  version "3.2110.1,2205"
  sha256 "1fd2a5f1df09434666327050ce9fe4e46276b489b4b3c9f95f7a7328d8a3c6fd"

  url "https://static.outline.ws/versions/Outline_#{version.csv.first}.zip"
  name "Outline"
  desc "Note taking app"
  homepage "https://outline.ws/"

  livecheck do
    url "https://gorillized.s3.amazonaws.com/versions/update_channel.xml"
    strategy :sparkle
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
