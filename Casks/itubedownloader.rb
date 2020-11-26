cask "itubedownloader" do
  version "6.5.26"
  sha256 "76ed2f1a72259f5b36e2e85ab1c2dc202a5fb4896650f267a671a4e2277236d3"

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg"
  appcast "https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml"
  name "iTubeDownloader"
  desc "Download YouTube videos, channels, or playlists"
  homepage "https://alphasoftware.co/"

  depends_on macos: ">= :yosemite"

  app "iTubeDownloader.app"
end
