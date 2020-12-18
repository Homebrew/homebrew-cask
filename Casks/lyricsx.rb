cask "lyricsx" do
  version "1.5.6,2322"
  sha256 "a23c6098bde8a57c3cbc32fdff499a7615ff5b9dcbc84f4e122add13552731b1"

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}+#{version.after_comma}.zip"
  appcast "https://github.com/ddddxxx/LyricsX/releases.atom"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/ddddxxx/LyricsX"

  auto_updates true

  app "LyricsX.app"

  zap trash: "~/ddddxxx.LyricsX"
end
