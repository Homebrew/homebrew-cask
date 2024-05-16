cask "font-tuffy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tuffy"
  name "Tuffy"
  homepage "http://tulrich.com/fonts/"

  font "Tuffy-Bold.ttf"
  font "Tuffy-BoldItalic.ttf"
  font "Tuffy-Italic.ttf"
  font "Tuffy-Regular.ttf"

  # No zap stanza required
end
