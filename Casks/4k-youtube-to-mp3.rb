cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "3.13.4.3950"
  sha256 "f65487fbb371d39a444ff6c6dd4086184eba23ad17e0ac979817ff078378f33c"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K YouTube to MP3"
  homepage "https://www.4kdownload.com/products/product-youtubetomp3"

  depends_on macos: ">= :sierra"

  app "4K YouTube to MP3.app"
end
