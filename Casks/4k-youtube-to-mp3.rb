cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "4.0.0"
  sha256 "72d9e5a980cf4dd8c1ee27f5cbeae85e393450d007e5ccf2e7035cda5185444f"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/product-youtubetomp3"

  livecheck do
    url "https://www.4kdownload.com/download"
    strategy :page_match
    regex(%r{href=.*?/4kyoutubetomp3_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "4K YouTube to MP3.app"
end
