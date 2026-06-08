cask "font-roboto" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/roboto"
  name "Roboto"
  homepage "https://fonts.google.com/specimen/Roboto"

  font "Roboto-Italic[wdth,wght].ttf"
  font "Roboto[wdth,wght].ttf"

  # No zap stanza required
end
