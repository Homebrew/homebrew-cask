cask "font-changa-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/changaone"
  name "Changa One"
  homepage "https://fonts.google.com/specimen/Changa+One"

  font "ChangaOne-Italic.ttf"
  font "ChangaOne-Regular.ttf"

  # No zap stanza required
end
