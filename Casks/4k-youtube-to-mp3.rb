cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "4.1.4"
  sha256 "76b00f4dee12e812bc580bafc852dbbdc0e74af8100c9410b089b88a5ccc0846"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/youtubetomp3/1"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kyoutubetomp3[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K YouTube to MP3.app"
end
