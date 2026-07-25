cask "font-nunito" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nunito"
  name "Nunito"
  homepage "https://fonts.google.com/specimen/Nunito"

  font "Nunito-Italic[wght].ttf"
  font "Nunito[wght].ttf"

  # No zap stanza required
end
