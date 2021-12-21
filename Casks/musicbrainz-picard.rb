cask "musicbrainz-picard" do
  version "2.7.1"
  sha256 "cdfd6cfa061b74390fa91a09d76ef6ddd4d2f078d372020a519c9dfc07d07089"

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
