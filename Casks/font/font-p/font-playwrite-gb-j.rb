cask "font-playwrite-gb-j" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/playwritegbj"
  name "Playwrite GB J"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteGBJ-Italic[wght].ttf"
  font "PlaywriteGBJ[wght].ttf"

  # No zap stanza required
end
