cask "itubedownloader" do
  version "6.5.25"
  sha256 "654255357d079d06592fcf5e0e8aa72c07c06dbb9d93a20d15aaefe22d10b80b"

  # itubedownloader.s3.us-east-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg"
  appcast "https://itubedownloader.s3.us-east-2.amazonaws.com/appcast.xml"
  name "iTubeDownloader"
  desc "Download YouTube videos, channels, or playlists"
  homepage "https://alphasoftware.co/"

  depends_on macos: ">= :yosemite"

  app "iTubeDownloader.app"
end
