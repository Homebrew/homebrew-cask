cask "font-playwrite-gb-s" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/playwritegbs"
  name "Playwrite GB S"
  homepage "https://github.com/TypeTogether/Playwrite/"

  font "PlaywriteGBS-Italic[wght].ttf"
  font "PlaywriteGBS[wght].ttf"

  # No zap stanza required
end
