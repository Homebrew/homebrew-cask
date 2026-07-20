cask "font-piedra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/piedra/Piedra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Piedra"
  homepage "https://fonts.google.com/specimen/Piedra"

  font "Piedra-Regular.ttf"

  # No zap stanza required
end
