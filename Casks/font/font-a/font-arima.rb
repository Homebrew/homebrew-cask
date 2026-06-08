cask "font-arima" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arima/Arima%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Arima"
  homepage "https://fonts.google.com/specimen/Arima"

  font "Arima[wght].ttf"

  # No zap stanza required
end
