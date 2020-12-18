cask "musicbrainz-picard" do
  version "2.5.5"
  sha256 "e288391bd36270606cd41cbc67a132e3398c1c4e4e1bdd0ba47a6cf3ce12123c"

  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg",
      verified: "musicbrainz.osuosl.org/pub/"
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
