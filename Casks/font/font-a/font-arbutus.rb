cask "font-arbutus" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arbutus/Arbutus-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Arbutus"
  homepage "https://fonts.google.com/specimen/Arbutus"

  font "Arbutus-Regular.ttf"

  # No zap stanza required
end
