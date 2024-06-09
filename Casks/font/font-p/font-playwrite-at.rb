cask "font-playwrite-at" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/playwriteat"
  name "Playwrite AT"
  homepage "https://github.com/TypeTogether/Playwrite"

  font "PlaywriteAT-Italic[wght].ttf"
  font "PlaywriteAT[wght].ttf"

  # No zap stanza required
end
