cask "font-hedvig-letters-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hedviglettersserif/HedvigLettersSerif%5Bopsz%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Hedvig Letters Serif"
  homepage "https://fonts.google.com/specimen/Hedvig+Letters+Serif"

  font "HedvigLettersSerif[opsz].ttf"

  # No zap stanza required
end
