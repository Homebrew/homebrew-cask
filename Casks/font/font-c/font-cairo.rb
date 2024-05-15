cask "font-cairo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cairo/Cairo%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cairo"
  homepage "https://fonts.google.com/specimen/Cairo"

  font "Cairo[slnt,wght].ttf"

  # No zap stanza required
end
