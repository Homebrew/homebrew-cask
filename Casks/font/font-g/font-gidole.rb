cask "font-gidole" do
  version :latest
  sha256 :no_check

  url "https://github.com/gidole/Gidole-Typefaces/raw/master/gidole.zip",
      verified: "github.com/gidole/"
  name "Gidole"
  homepage "https://gidole.github.io/"

  font "GidoleFont/Gidole-Regular.ttf"
  font "GidoleFont/Gidolinya-Regular.otf"

  # No zap stanza required
end
