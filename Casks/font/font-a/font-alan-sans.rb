cask "font-alan-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alansans/AlanSans%5Bwght%5D.ttf"
  name "Alan Sans"
  homepage "https://github.com/alan-eu/Alan-Sans"

  font "AlanSans[wght].ttf"

  # No zap stanza required
end
