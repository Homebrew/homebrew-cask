cask "font-spirax" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/spirax/Spirax-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Spirax"
  homepage "https://fonts.google.com/specimen/Spirax"

  font "Spirax-Regular.ttf"

  # No zap stanza required
end
