cask "font-oranienbaum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oranienbaum/Oranienbaum-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Oranienbaum"
  homepage "https://fonts.google.com/specimen/Oranienbaum"

  font "Oranienbaum-Regular.ttf"

  # No zap stanza required
end
