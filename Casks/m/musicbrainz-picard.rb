cask "musicbrainz-picard" do
  version "2.12"
  sha256 "0e15d8ef203d2ad1037393deae7483db86f896b829e15bfb9675ff6985679216"

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
