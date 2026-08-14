cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "26.3.0"
  sha256 arm:   "d1cba1acefda3e5401c0b26bd66245fc9c87e3087f6c8dcd7a36b38b5bdbdb38",
         intel: "f8dd19b4456873fab9f20e161ae3f600d3734530dab84c3214458a62d410ee65"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}_#{arch}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/youtubetomp3/1"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kyoutubetomp3[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: :monterey

  app "4K YouTube to MP3.app"

  uninstall quit: "com.openmedia.4kyoutubetomp3"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.*",
    "~/Library/Saved Application State/com.openmedia.4kyoutubetomp3.savedState",
  ]
end
