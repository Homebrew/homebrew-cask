cask "lyricsx" do
  version "1.6.0,2334"
  sha256 "2af8492bb1da0916151caa649fdfcf71091de950d1418f5b0e91dd8382b6f2f8"

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}+#{version.after_comma}.zip"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/ddddxxx/LyricsX"

  livecheck do
    url "https://github.com/ddddxxx/LyricsX/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/LyricsX_(\d+(?:\.\d+)*)\+(\d+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "LyricsX.app"

  zap trash: "~/ddddxxx.LyricsX"
end
