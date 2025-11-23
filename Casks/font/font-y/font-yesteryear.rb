cask "font-yesteryear" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yesteryear/Yesteryear-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yesteryear"
  homepage "https://fonts.google.com/specimen/Yesteryear"

  font "Yesteryear-Regular.ttf"

  # No zap stanza required
end
