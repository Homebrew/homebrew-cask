cask "mediainfoex" do
  version "1.7.2"
  sha256 "50d15c662c9c2ab630bde927d956b026182a42b0ca51a080d3eca10006705f86"

  url "https://github.com/sbarex/MediaInfo/releases/download/#{version}/MediaInfo.zip"
  name "MediaInfo"
  desc "Display file information in Finder contextual menu"
  homepage "https://github.com/sbarex/MediaInfo"

  depends_on macos: ">= :catalina"

  app "MediaInfoEx.app"

  zap trash: [
    "~/Library/Application Scripts/org.sbarex.MediaInfo",
    "~/Library/Application Scripts/org.sbarex.MediaInfo.Finder-Extension",
    "~/Library/Containers/MediaInfo Finder Extension",
    "~/Library/Containers/org.sbarex.MediaInfo",
    "~/Library/Preferences/org.sbarex.MediaInfo.plist",
  ]
end
