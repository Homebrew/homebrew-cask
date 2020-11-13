cask "4k-youtube-to-mp3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "3.13.3.3930"
  sha256 "0e1891f2052ad3906a79a9b7a36e2e0fc736a563b532d3866bee71537c88eca2"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version.major_minor_patch}.dmg"
  appcast "https://www.4kdownload.com/download"
  name "4K YouTube to MP3"
  homepage "https://www.4kdownload.com/products/product-youtubetomp3"

  depends_on macos: ">= :sierra"

  app "4K YouTube to MP3.app"
end
