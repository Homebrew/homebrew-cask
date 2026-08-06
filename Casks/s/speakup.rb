cask "speakup" do
  version "1.0.28"
  sha256 "e396fca53cc8c88f8eab855b58a0e8c728a908c728c2f519ec11cce78f4266ae"

  url "https://getspeakup.app/download/SpeakUp-#{version}.dmg",
      verified: "getspeakup.app/download/"
  name "SpeakUp Dictation"
  desc "On-device dictation that types your words into any app"
  homepage "https://getspeakup.app/"

  livecheck do
    url "https://getspeakup.app/download/appcast.xml"
    # The appcast carries both sparkle:shortVersionString (1.0.28) and
    # sparkle:version (38, the build number), so the default strategy returns
    # "1.0.28,38". The download URL is keyed on the marketing version alone.
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "SpeakUp.app"

  zap trash: [
    "~/Library/Application Support/SpeakUp",
    "~/Library/Caches/com.nedelcu.SpeakUp",
    "~/Library/HTTPStorages/com.nedelcu.SpeakUp",
    "~/Library/Preferences/com.nedelcu.SpeakUp.plist",
    "~/Library/Saved Application State/com.nedelcu.SpeakUp.savedState",
  ]
end
