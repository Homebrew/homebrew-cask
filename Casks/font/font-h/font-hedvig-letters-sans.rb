cask "font-hedvig-letters-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hedvigletterssans/HedvigLettersSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Hedvig Letters Sans"
  homepage "https://fonts.google.com/specimen/Hedvig+Letters+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hedvig Letters Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HedvigLettersSans-Regular.ttf"

  # No zap stanza required
end
