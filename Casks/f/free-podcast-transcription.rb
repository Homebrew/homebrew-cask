cask "free-podcast-transcription" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.0.4"
  sha256 arm:   "bd9177f88e23a179776d416e2d5912f9c5dc9b3979f796ed708522944ce2f81d",
         intel: "e2605d7110c0a1951664a1e3fd0624d843b89869673a5eecae2a47e8c0ca9391"

  url "https://freepodcasttranscription.com/desktop-builds/darwin/#{arch}/Free%20Podcast%20Transcription.dmg"
  name "Free Podcast Transcription"
  desc "Transcribe Your Podcast"
  homepage "https://freepodcasttranscription.com/"

  app "Free Podcast Transcription.app"

  zap trash: [
    "~/Library/Caches/com.spreaker.freepodcasttranscription/",
    "~/Library/Preferences/com.spreaker.freepodcasttranscription.plist",
    "~/Library/WebKit/com.spreaker.freepodcasttranscription/",
    "~/Library/Saved Application State/com.spreaker.freepodcasttranscription.savedState/",
    "~/Library/Application Support/com.spreaker.freepodcasttranscription/",
  ]
end
