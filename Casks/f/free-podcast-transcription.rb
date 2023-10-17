cask "free-podcast-transcription" do
  arch arm: "aarch64", intel: "x86_64"

  sha256 :no_check

  on_arm do
    version "0.0.4,20230417.152948"
  end
  on_intel do
    version "0.0.4,20230417.153610"
  end

  url "https://freepodcasttranscription.com/desktop-builds/darwin/#{arch}/Free%20Podcast%20Transcription.dmg"
  name "Free Podcast Transcription"
  desc "Transcribe Your Podcast"
  homepage "https://freepodcasttranscription.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Free Podcast Transcription.app"

  zap trash: [
    "~/Library/Application Support/com.spreaker.freepodcasttranscription/",
    "~/Library/Caches/com.spreaker.freepodcasttranscription/",
    "~/Library/Preferences/com.spreaker.freepodcasttranscription.plist",
    "~/Library/Saved Application State/com.spreaker.freepodcasttranscription.savedState/",
    "~/Library/WebKit/com.spreaker.freepodcasttranscription/",
  ]
end
