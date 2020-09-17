cask "4k-youtube-to-mp3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "3.13.1.3850"
  sha256 "2fde21f6524af32d41e4b3d2a53ff1dbe9619a1824b9fb83df5424e030534691"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K YouTube to MP3"
  homepage "https://www.4kdownload.com/products/product-youtubetomp3"

  depends_on macos: ">= :sierra"

  app "4K YouTube to MP3.app"
end
