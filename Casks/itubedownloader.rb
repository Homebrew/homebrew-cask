cask "itubedownloader" do
  version "6.5.27,65027"
  sha256 :no_check

  url "https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg",
      verified: "itubedownloader.s3.us-east-2.amazonaws.com/"
  appcast "https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml"
  name "iTubeDownloader"
  desc "Download YouTube videos, channels, or playlists"
  homepage "https://alphasoftware.co/"

  depends_on macos: ">= :yosemite"

  app "iTubeDownloader.app"
end
