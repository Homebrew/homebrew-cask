cask "font-faune" do
  version "1.000"
  sha256 :no_check

  url "http://www.cnap.graphismeenfrance.fr/faune/Faune_Fonts.zip"
  name "Faune"
  homepage "http://www.cnap.graphismeenfrance.fr/faune/en.html"

  font "Faune_Fonts/Otf/Faune-DisplayBlack.otf"
  font "Faune_Fonts/Otf/Faune-DisplayBoldItalic.otf"
  font "Faune_Fonts/Otf/Faune-DisplayThin.otf"
  font "Faune_Fonts/Otf/Faune-TextBold.otf"
  font "Faune_Fonts/Otf/Faune-TextItalic.otf"
  font "Faune_Fonts/Otf/Faune-TextRegular.otf"

  # No zap stanza required
end
