cask "font-david-clm" do
  version :latest
  sha256 :no_check

  url "https://opensiddur.org/wp-content/uploads/fonts/DavidCLM/DavidCLM.zip"
  name "David CLM"
  homepage "https://opensiddur.org/wp-content/uploads/fonts/display-font-charmap.php?fnt=DavidCLM"

  font "DavidCLM-Bold.otf"
  font "DavidCLM-BoldItalic.otf"
  font "DavidCLM-Medium.otf"
  font "DavidCLM-MediumItalic.otf"

  # No zap stanza required
end
