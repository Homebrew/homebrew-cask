cask "font-lilita-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lilitaone/LilitaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lilita One"
  homepage "https://fonts.google.com/specimen/Lilita+One"

  font "LilitaOne-Regular.ttf"

  # No zap stanza required
end
