cask "font-unica-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unicaone/UnicaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Unica One"
  homepage "https://fonts.google.com/specimen/Unica+One"

  font "UnicaOne-Regular.ttf"

  # No zap stanza required
end
