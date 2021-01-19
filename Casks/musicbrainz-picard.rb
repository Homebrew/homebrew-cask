cask "musicbrainz-picard" do
  version "2.5.6"
  sha256 "c4686cc3b29c8b672245a89b0c18cc86b54e06f5491c0cdfdb5f471e061fff32"

  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}.dmg",
      verified: "musicbrainz.osuosl.org/pub/"
  name "MusicBrainz Picard"
  desc "Music tagger"
  homepage "https://picard.musicbrainz.org/"

  livecheck do
    url "https://picard.musicbrainz.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/MusicBrainz-Picard-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "MusicBrainz Picard.app"

  zap trash: [
    "~/.config/MusicBrainz",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]
end
