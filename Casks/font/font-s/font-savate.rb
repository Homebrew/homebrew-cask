cask "font-savate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/savate"
  name "Savate"
  homepage "https://github.com/maxesnee/savate"

  font "Savate-Italic[wght].ttf"
  font "Savate[wght].ttf"

  # No zap stanza required
end
