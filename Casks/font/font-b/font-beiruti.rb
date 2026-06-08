cask "font-beiruti" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/beiruti/Beiruti%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Beiruti"
  homepage "https://fonts.google.com/specimen/Beiruti"

  font "Beiruti[wght].ttf"

  # No zap stanza required
end
