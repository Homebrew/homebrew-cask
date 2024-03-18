cask "4k-youtube-to-mp3" do
  arch arm: "arm64", intel: "x64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "5.2.0"
  sha256 arm:   "34452eb2d36ead216b967e092fd9255bb96deca734f613a9835732530e585514",
         intel: "7db96685ac9b112afe202b0cb0edccfd6083cb8d6d1340eacd057926fff4b321"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}_#{arch}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/youtubetomp3/1"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kyoutubetomp3[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K YouTube to MP3.app"

  zap trash: [
    "~/Library/Application Support/4kdownload.com",
    "~/Library/Preferences/com.4kdownload.4K Video to MP3.plist",
    "~/Library/Preferences/com.4kdownload.4K YouTube to MP3.plist",
    "~/Library/Preferences/com.4kdownload.ApplicationDirectories.plist",
    "~/Library/Saved Application State/com.openmedia.4kyoutubetomp3.savedState",
  ]
end
