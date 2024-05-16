cask "font-times-newer-roman" do
  version "1.000"
  sha256 :no_check

  url "https://timesnewerroman.com/assets/TimesNewerRoman.zip"
  name "Times Newer Roman"
  desc "Looks just like Times New Roman, but characters are 5-10% wider"
  homepage "https://timesnewerroman.com/"

  font "TimesNewerRoman-Bold.otf"
  font "TimesNewerRoman-BoldItalic.otf"
  font "TimesNewerRoman-Italic.otf"
  font "TimesNewerRoman-Regular.otf"

  # No zap stanza required
end
