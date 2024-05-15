cask "font-courier-prime-medium-and-semi-bold" do
  version :latest
  sha256 :no_check

  url "https://quoteunquoteapps.com/courierprime/downloads/courier-prime-medium-semi-bold.zip"
  name "Courier Prime Medium & Semi-Bold"
  homepage "https://quoteunquoteapps.com/courierprime/#cyrillic-semi-bold"

  font "CourierPrime-Medium.ttf"
  font "CourierPrime-SemiBold.ttf"

  # No zap stanza required
end
