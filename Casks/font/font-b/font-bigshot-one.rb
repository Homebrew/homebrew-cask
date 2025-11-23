cask "font-bigshot-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshotone/BigshotOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bigshot One"
  homepage "https://fonts.google.com/specimen/Bigshot+One"

  font "BigshotOne-Regular.ttf"

  # No zap stanza required
end
