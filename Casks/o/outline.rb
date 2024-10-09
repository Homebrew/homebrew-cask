cask "outline" do
  version "4.2410.1"
  sha256 "127e71c6ed76e85e407b3b84d4be0355a0764055d625145934db27230a18ea9f"

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
