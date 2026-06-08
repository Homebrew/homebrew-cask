cask "font-wendy-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wendyone/WendyOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Wendy One"
  homepage "https://fonts.google.com/specimen/Wendy+One"

  font "WendyOne-Regular.ttf"

  # No zap stanza required
end
