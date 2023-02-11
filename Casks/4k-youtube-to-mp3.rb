cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "4.8.1"
  sha256 "61d37049d6c003ba1ebb6108088804108b28f9b2dd85eca778c5eae173793b6b"

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
