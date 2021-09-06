cask "musicbrainz-picard" do
  version "2.6.3"
  sha256 "6df5ae86e15cdda5acf3ea285010da7980f80275d8205ce211201eeca898268b"

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

  depends_on macos: ">= :mojave"

  app "MusicBrainz Picard.app"

  zap trash: [
    "~/.config/MusicBrainz",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]
end
