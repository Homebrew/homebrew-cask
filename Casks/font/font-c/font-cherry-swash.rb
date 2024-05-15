cask "font-cherry-swash" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cherryswash"
  name "Cherry Swash"
  homepage "https://fonts.google.com/specimen/Cherry+Swash"

  font "CherrySwash-Bold.ttf"
  font "CherrySwash-Regular.ttf"

  # No zap stanza required
end
