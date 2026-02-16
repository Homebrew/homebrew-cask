cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "26.0.4"
  sha256 arm:   "207ca4a2ed901c5bba3be2ff7144a789f53465bed046c89a53936b096d324799",
         intel: "cb83910aef1419ed007e31eddc1584f5285674eb125fac3686ce828a36935bde"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}_#{arch}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/youtubetomp3/1"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kyoutubetomp3[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :monterey"

  app "4K YouTube to MP3.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.*",
    "~/Library/Saved Application State/com.openmedia.4kyoutubetomp3.savedState",
  ]
end
