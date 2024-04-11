cask "4k-youtube-to-mp3" do
  arch arm: "arm64", intel: "x64"

  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "5.2.2"
  sha256 arm:   "ebc9ba40d907e21e7588062aa850558ef83d5790e50eeadb2d4814c28022a1cd",
         intel: "7cc8ee01dc4b23dc0a994459b3a2dccc97677a0185086a946aeadb21ed0efcae"

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
