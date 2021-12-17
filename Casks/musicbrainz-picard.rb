cask "musicbrainz-picard" do
  version "2.7"
  sha256 "7825fc0621ad0e7f6826e0df0504dac1eb2c396a9c75cd732d447db971bd9f09"

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
