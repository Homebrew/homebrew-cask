cask "font-courier-prime-sans" do
  version :latest
  sha256 :no_check

  url "https://quoteunquoteapps.com/courierprime/downloads/courier-prime-sans.zip"
  name "Courier Prime Sans"
  homepage "https://quoteunquoteapps.com/courierprime/#code-sans"

  font "CourierPrimeSans-master/ttf/Courier Prime Sans Bold Italic.ttf"
  font "CourierPrimeSans-master/ttf/Courier Prime Sans Bold.ttf"
  font "CourierPrimeSans-master/ttf/Courier Prime Sans Italic.ttf"
  font "CourierPrimeSans-master/ttf/Courier Prime Sans.ttf"

  # No zap stanza required
end
