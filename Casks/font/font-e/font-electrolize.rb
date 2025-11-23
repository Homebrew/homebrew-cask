cask "font-electrolize" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/electrolize/Electrolize-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Electrolize"
  homepage "https://fonts.google.com/specimen/Electrolize"

  font "Electrolize-Regular.ttf"

  # No zap stanza required
end
