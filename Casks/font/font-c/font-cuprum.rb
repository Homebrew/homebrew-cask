cask "font-cuprum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cuprum"
  name "Cuprum"
  homepage "https://fonts.google.com/specimen/Cuprum"

  font "Cuprum-Italic[wght].ttf"
  font "Cuprum[wght].ttf"

  # No zap stanza required
end
