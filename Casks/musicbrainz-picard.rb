cask "musicbrainz-picard" do
  version "2.4.3"
  sha256 "3c69036dbe05667d7e3cd6cf917275e0ab4caa2c20519f5943a2f07177de957b"

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast "https://picard.musicbrainz.org/downloads/"
  name "MusicBrainz Picard"
  homepage "https://picard.musicbrainz.org/"

  depends_on macos: ">= :sierra"

  app "MusicBrainz Picard.app"

  zap trash: [
    "~/.config/MusicBrainz",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]
end
