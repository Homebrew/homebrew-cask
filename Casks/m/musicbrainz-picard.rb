cask "musicbrainz-picard" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.5,13.0"
  sha256 arm:   "53b1f8c3a971c538421ddc89a14a7322bd5bc90521ade1f5aded51d10a64ddfe",
         intel: "b8c62aed466039cdb97ab1e9267df5fc55d37a493df146c0f85708f1e0a68499"

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
