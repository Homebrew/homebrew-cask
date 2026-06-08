cask "font-courier-prime" do
  version :latest
  sha256 :no_check

  url "https://quoteunquoteapps.com/courierprime/downloads/courier-prime.zip"
  name "Courier Prime"
  homepage "https://quoteunquoteapps.com/courierprime/"

  font "Courier Prime/Courier Prime.ttf"
  font "Courier Prime/Courier Prime Bold.ttf"
  font "Courier Prime/Courier Prime Bold Italic.ttf"
  font "Courier Prime/Courier Prime Italic.ttf"

  # No zap stanza required
end
