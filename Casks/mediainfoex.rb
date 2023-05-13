cask "mediainfoex" do
  version "1.7.1"
  sha256 "a58f0b450598b8aa3921c861c7b42eb37aa4d7137fd00e28029a81bcd843ae22"

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
