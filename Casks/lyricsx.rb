cask "lyricsx" do
  version "1.5.5,2309"
  sha256 "ceb833a473521a14983e471bd49ff71195ac8983db961a73c8087af361e1ca4b"

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.before_comma}/LyricsX_#{version.before_comma}+#{version.after_comma}.zip"
  appcast "https://github.com/ddddxxx/LyricsX/releases.atom"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/ddddxxx/LyricsX"

  auto_updates true

  app "LyricsX.app"

  zap trash: "~/ddddxxx.LyricsX"
end
