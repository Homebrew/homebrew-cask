cask "musicbrainz-picard" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.4,13.0"
  sha256 arm:   "dc4bd3ab3da5df45baa7e82e0a6b49930f6f8dd72e76b74fde0d533f41850310",
         intel: "3ead7559abaf78b4a3f10205de0f1b0f497d307ccb99cc32b6e136016ebfa809"

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
    "~/Library/Application Support/org.musicbrainz.Picard",
    "~/Library/Caches/MusicBrainz",
    "~/Library/Preferences/org.musicbrainz.picard.plist",
    "~/Library/Saved Application State/org.musicbrainz.picard.savedState",
  ]
end
