cask "musicbrainz-picard" do
  version "2.6.1"
  sha256 "4c09989d0e769e836b3979608787460fe058a1def3302c4a37db4b424e5bab43"

  url "https://musicbrainz.osuosl.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}-macOS-10.14.dmg",
      verified: "musicbrainz.osuosl.org/pub/"
  name "MusicBrainz Picard"
  desc "Music tagger"
  homepage "https://picard.musicbrainz.org/"

  livecheck do
    url "https://picard.musicbrainz.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/MusicBrainz-Picard-(\d+(?:\.\d+)*)-macOS-(?:\d+(?:\.\d+)*)\.dmg}i)
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
