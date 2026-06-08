cask "font-gruppo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gruppo/Gruppo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gruppo"
  homepage "https://fonts.google.com/specimen/Gruppo"

  font "Gruppo-Regular.ttf"

  # No zap stanza required
end
