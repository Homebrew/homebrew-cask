cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "5.5.1"
  sha256 arm:   "6ae67716993146704d5e78fca12bfc51816809de4e5cfc3dd9b3747ac05e5994",
         intel: "bcb2617efc8d278d91d422e788de50e48ff3395594d72c7f29defdefa8ec7db3"

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
    "~/Library/Preferences/com.4kdownload.*",
    "~/Library/Saved Application State/com.openmedia.4kyoutubetomp3.savedState",
  ]
end
