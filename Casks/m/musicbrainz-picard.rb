cask "musicbrainz-picard" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.3,13.0"
  sha256 arm:   "c8f24c77b5ad5523803f9db04c6c564503a12bb8287714fea1fb31b27091c155",
         intel: "be3b60d914c2731e08ecea86ed77a0383a1da99737c6d47005f5c61ca2bd186e"

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
