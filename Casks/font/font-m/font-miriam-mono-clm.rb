cask "font-miriam-mono-clm" do
  version :latest
  sha256 :no_check

  url "https://opensiddur.org/wp-content/uploads/fonts/MiriamMonoCLM/MiriamMonoCLM.zip"
  name "Miriam Mono CLM"
  homepage "https://opensiddur.org/wp-content/uploads/fonts/display-font-charmap.php?fnt=MiriamMonoCLM"

  font "MiriamMonoCLM-Bold.ttf"
  font "MiriamMonoCLM-BoldOblique.ttf"
  font "MiriamMonoCLM-Book.ttf"
  font "MiriamMonoCLM-BookOblique.ttf"

  # No zap stanza required
end
