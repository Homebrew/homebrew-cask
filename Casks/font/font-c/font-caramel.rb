cask "font-caramel" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caramel/Caramel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caramel"
  homepage "https://fonts.google.com/specimen/Caramel"

  font "Caramel-Regular.ttf"

  # No zap stanza required
end
