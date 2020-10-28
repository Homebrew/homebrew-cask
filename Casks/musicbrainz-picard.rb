cask "musicbrainz-picard" do
  version "2.5"
  sha256 "6ed7d84beb71527f04e8c9b9174dc4975011279d21fb46ec872fd0e69a7c7430"

  # musicbrainz.osuosl.org/pub/ was verified as official when first introduced to the cask
  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg"
  appcast "https://picard.musicbrainz.org/downloads/"
  name "MusicBrainz Picard"
  desc "Cross-platform music tagger"
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
