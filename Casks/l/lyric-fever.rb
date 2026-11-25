cask "lyric-fever" do
  version "3.3"
  sha256 "48f0ea7f02301534575355b6476156b1bbf615f839ba34943146f50a3cb93df2"

  release_version = version.csv.second || version.csv.first
  url "https://github.com/aviwad/LyricFever/releases/download/v#{release_version}/Lyric.Fever.#{version.csv.first}.dmg"
  name "Lyric Fever"
  desc "Lyrics for Apple Music and Spotify"
  homepage "https://lyricfever.com/"

  livecheck do
    url "https://aviwad.github.io/SpotifyLyricsInMenubar/appcast.xml"
    regex(%r{/v?(\d+(?:\.\d+)*[^/]*)/Lyric[._-]Fever[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      match.values_at(2, 1).uniq.join(",")
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Lyric Fever.app"

  zap trash: "~/Library/Containers/Lyric Fever"
end
