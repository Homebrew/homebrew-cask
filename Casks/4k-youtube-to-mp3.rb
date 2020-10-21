cask "4k-youtube-to-mp3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "3.13.2.3870"
  sha256 "be42a5309bfe383ed9588649926b32de12e67da2296d0ccf67e4ac6fe6cd52be"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K YouTube to MP3"
  homepage "https://www.4kdownload.com/products/product-youtubetomp3"

  depends_on macos: ">= :sierra"

  app "4K YouTube to MP3.app"
end
