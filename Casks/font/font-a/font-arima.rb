cask "font-arima" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arima/Arima%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Arima"
  homepage "https://fonts.google.com/specimen/Arima"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arima",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arima[wght].ttf"

  # No zap stanza required
end
