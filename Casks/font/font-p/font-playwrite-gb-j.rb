cask "font-playwrite-gb-j" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwritegbj"
  name "Playwrite GB J"
  homepage "https://fonts.google.com/specimen/Playwrite+GB+J"

  font "PlaywriteGBJ-Italic[wght].ttf"
  font "PlaywriteGBJ[wght].ttf"

  # No zap stanza required
end
