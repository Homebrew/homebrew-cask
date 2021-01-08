cask "lyricsx" do
  version "1.5.6,2322"
  sha256 "a23c6098bde8a57c3cbc32fdff499a7615ff5b9dcbc84f4e122add13552731b1"

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
