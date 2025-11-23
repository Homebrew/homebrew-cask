cask "font-material-symbols" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/material-design-icons.git",
      verified:  "github.com/google/material-design-icons",
      branch:    "master",
      only_path: "variablefont"
  name "Material Symbols"
  homepage "https://fonts.google.com/icons"

  font "MaterialSymbolsOutlined[FILL,GRAD,opsz,wght].ttf"
  font "MaterialSymbolsRounded[FILL,GRAD,opsz,wght].ttf"
  font "MaterialSymbolsSharp[FILL,GRAD,opsz,wght].ttf"

  # No zap stanza required
end
