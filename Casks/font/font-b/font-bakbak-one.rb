cask "font-bakbak-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bakbakone/BakbakOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bakbak One"
  homepage "https://fonts.google.com/specimen/Bakbak+One"

  font "BakbakOne-Regular.ttf"

  # No zap stanza required
end
