cask "musicbrainz-picard" do
  version "2.13.1"
  sha256 "743f4c0ec4519c3df992ed4ca243657da4ecd8ceb6d0ad6c04f8395fc039a1d5"

  url "https://data.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version}-macOS-10.14.dmg"
  name "MusicBrainz Picard"
  desc "Music tagger"
  homepage "https://picard.musicbrainz.org/"

  livecheck do
    url "https://picard.musicbrainz.org/downloads/"
    regex(%r{href=.*?/MusicBrainz[._-]Picard[._-]v?(\d+(?:\.\d+)+)[._-]macOS}i)
  end

  depends_on macos: ">= :mojave"

  app "MusicBrainz Picard.app"

  zap trash: [
    "~/.config/MusicBrainz",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
