cask "itubedownloader" do
  version "6.5.23"
  sha256 "15602d1c301223a7ae9f2751741cd20ca512c19a0792f9ddc702ff1f3df15694"

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg"
  appcast "https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml"
  name "iTubeDownloader"
  desc "Download YouTube videos, channels, or playlists"
  homepage "https://alphasoftware.co/"

  depends_on macos: ">= :yosemite"

  app "iTubeDownloader.app"
end
