cask "musicbrainz-picard" do
  version "2.11"
  sha256 "a0f04274b71fadb43e9082cee4d1465f183475b8043411de559efad6de44c923"

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
end
