cask "font-times-newer-roman" do
  version "1.000"
  sha256 :no_check

  url "https://timesnewerroman.com/assets/TimesNewerRoman.zip"
  name "Times Newer Roman"
  homepage "https://timesnewerroman.com/"

  livecheck do
    skip "No version information available"
  end

  font "TimesNewerRoman-Bold.otf"
  font "TimesNewerRoman-BoldItalic.otf"
  font "TimesNewerRoman-Italic.otf"
  font "TimesNewerRoman-Regular.otf"

  # No zap stanza required
end
