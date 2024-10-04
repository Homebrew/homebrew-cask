cask "mediainfoex" do
  version "1.7.3"
  sha256 "a0e37188be0246673d7a24b2dcc79a9eb3872f29f89ec6c0dc704e042b435375"

  url "https://github.com/sbarex/MediaInfo/releases/download/#{version}/MediaInfoEx.zip"
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
