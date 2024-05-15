cask "font-miriam-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/miriamlibre"
  name "Miriam Libre"
  homepage "https://fonts.google.com/specimen/Miriam+Libre"

  font "MiriamLibre-Bold.ttf"
  font "MiriamLibre-Regular.ttf"

  # No zap stanza required
end
