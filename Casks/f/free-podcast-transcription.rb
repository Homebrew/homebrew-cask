cask "free-podcast-transcription" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "0.0.4,20230417.152948"
    sha256 "bd9177f88e23a179776d416e2d5912f9c5dc9b3979f796ed708522944ce2f81d"
  end
  on_intel do
    version "0.0.4,20230417.153610"
    sha256 "e2605d7110c0a1951664a1e3fd0624d843b89869673a5eecae2a47e8c0ca9391"
  end

  url "https://freepodcasttranscription.com/desktop-builds/darwin/#{arch}/Free%20Podcast%20Transcription.dmg"
  name "Free Podcast Transcription"
  desc "Transcribe Your Podcast"
  homepage "https://freepodcasttranscription.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Free Podcast Transcription.app"

  zap trash: [
    "~/Library/Application Support/com.spreaker.freepodcasttranscription/",
    "~/Library/Caches/com.spreaker.freepodcasttranscription/",
    "~/Library/Preferences/com.spreaker.freepodcasttranscription.plist",
    "~/Library/Saved Application State/com.spreaker.freepodcasttranscription.savedState/",
    "~/Library/WebKit/com.spreaker.freepodcasttranscription/",
  ]
end
