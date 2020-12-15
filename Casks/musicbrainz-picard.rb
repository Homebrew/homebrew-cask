cask "musicbrainz-picard" do
  version "2.5.4"
  sha256 "f7d58a8af18ee9bb1aaff0a7553ea8e2327ebeee4e41e00f1b17ebace7384748"

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
