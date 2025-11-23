cask "font-liter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/liter/Liter-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Liter"
  homepage "https://fonts.google.com/specimen/Liter"

  font "Liter-Regular.ttf"

  # No zap stanza required
end
