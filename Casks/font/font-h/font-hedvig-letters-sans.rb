cask "font-hedvig-letters-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hedvigletterssans/HedvigLettersSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hedvig Letters Sans"
  homepage "https://fonts.google.com/specimen/Hedvig+Letters+Sans"

  font "HedvigLettersSans-Regular.ttf"

  # No zap stanza required
end
