cask "font-texturina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/texturina"
  name "Texturina"
  homepage "https://fonts.google.com/specimen/Texturina"

  font "Texturina-Italic[opsz,wght].ttf"
  font "Texturina[opsz,wght].ttf"

  # No zap stanza required
end
