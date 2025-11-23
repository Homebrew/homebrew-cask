cask "font-doppio-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/doppioone/DoppioOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Doppio One"
  homepage "https://fonts.google.com/specimen/Doppio+One"

  font "DoppioOne-Regular.ttf"

  # No zap stanza required
end
