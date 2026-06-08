cask "font-gaegu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gaegu"
  name "Gaegu"
  homepage "https://fonts.google.com/specimen/Gaegu"

  font "Gaegu-Bold.ttf"
  font "Gaegu-Light.ttf"
  font "Gaegu-Regular.ttf"

  # No zap stanza required
end
