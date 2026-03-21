cask "font-hedvig-letters-serif" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hedviglettersserif/HedvigLettersSerif%5Bopsz%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Hedvig Letters Serif"
  homepage "https://fonts.google.com/specimen/Hedvig+Letters+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hedvig Letters Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HedvigLettersSerif[opsz].ttf"

  # No zap stanza required
end
