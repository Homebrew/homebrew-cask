cask "font-mansalva" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mansalva/Mansalva-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mansalva"
  homepage "https://fonts.google.com/specimen/Mansalva"

  font "Mansalva-Regular.ttf"

  # No zap stanza required
end
