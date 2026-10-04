cask "musicbrainz-picard" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0,13.0"
  sha256 arm:   "546d8c9dcd5d8ed21bb347780d687569de921cc91bb7d57e2245b7c97970dbd0",
         intel: "75e72fee2c462efa638d586c752fa0517c9588bad873f644a4b164d5bcaf673f"

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

  zap trash: [
    "~/.config/MusicBrainz",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]
end
