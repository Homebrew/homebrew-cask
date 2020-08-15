cask "4k-youtube-to-mp3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "3.13.0.3810"
  sha256 "73c06477aaefeda0b5159de5cc3638461e1d82c0b2286684ee3720f635f60edf"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K YouTube to MP3"
  homepage "https://www.4kdownload.com/products/product-youtubetomp3"

  depends_on macos: ">= :sierra"

  app "4K YouTube to MP3.app"
end
