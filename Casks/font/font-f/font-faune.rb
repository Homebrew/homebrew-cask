cask "font-faune" do
  version "1.000"
  sha256 :no_check

  url "https://www.cnap.fr/sites/faune/Faune_Fonts.zip"
  name "Faune"
  homepage "https://www.cnap.fr/sites/faune/"

  livecheck do
    skip "No version information available"
  end

  font "Faune_Fonts/Otf/Faune-DisplayBlack.otf"
  font "Faune_Fonts/Otf/Faune-DisplayBoldItalic.otf"
  font "Faune_Fonts/Otf/Faune-DisplayThin.otf"
  font "Faune_Fonts/Otf/Faune-TextBold.otf"
  font "Faune_Fonts/Otf/Faune-TextItalic.otf"
  font "Faune_Fonts/Otf/Faune-TextRegular.otf"

  # No zap stanza required
end
