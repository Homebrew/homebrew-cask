cask "musicbrainz-picard" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.1,13.0"
  sha256 arm:   "69c438f5c41bd951ac3451b052a697d0aaf618cedf6f335fce5eac4c7296b609",
         intel: "73c9ef8d21f1e6d0b1951800196e2a408b2c9cc93ae01e167bd29951f7f32a81"

  url "https://data.musicbrainz.org/pub/musicbrainz/picard/MusicBrainz-Picard-#{version.csv.first}-macOS-#{version.csv.second}-#{arch}.dmg"
  name "MusicBrainz Picard"
  desc "Music tagger"
  homepage "https://picard.musicbrainz.org/"

  livecheck do
    url "https://picard.musicbrainz.org/downloads/"
    regex(%r{href=.*?/MusicBrainz[._-]Picard[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]v?(\d+(?:\.\d+)*)[._-]#{arch}}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :ventura

  app "MusicBrainz Picard.app"

  uninstall quit: "org.musicbrainz.Picard"

  zap trash: [
    "~/.config/MusicBrainz",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]
end
