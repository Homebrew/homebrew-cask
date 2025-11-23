cask "mediainfoex" do
  version "1.7.4"
  sha256 "7f2cbb113f6bfff49541487d73ce8b6dc3e4b28a7d2832afbcd45dca6b891481"

  url "https://github.com/sbarex/MediaInfo/releases/download/#{version}/MediaInfoEx.zip"
  name "MediaInfo"
  desc "Display file information in Finder contextual menu"
  homepage "https://github.com/sbarex/MediaInfo"

  depends_on macos: ">= :big_sur"

  app "MediaInfoEx.app"

  zap trash: [
    "~/Library/Application Scripts/org.sbarex.MediaInfo",
    "~/Library/Application Scripts/org.sbarex.MediaInfo.Finder-Extension",
    "~/Library/Containers/MediaInfo Finder Extension",
    "~/Library/Containers/org.sbarex.MediaInfo",
    "~/Library/Preferences/org.sbarex.MediaInfo.plist",
  ]
end
