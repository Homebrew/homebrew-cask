cask "musicbrainz-picard" do
  version "2.5.2"
  sha256 "cb9f2df4e0f476cd73b6d5099aec77c1789d6f3d8ed65323c6dc9b6713ccdd64"

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
