cask "font-dm-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmmono"
  name "DM Mono"
  homepage "https://fonts.google.com/specimen/DM+Mono"

  font "DMMono-Italic.ttf"
  font "DMMono-Light.ttf"
  font "DMMono-LightItalic.ttf"
  font "DMMono-Medium.ttf"
  font "DMMono-MediumItalic.ttf"
  font "DMMono-Regular.ttf"

  # No zap stanza required
end
