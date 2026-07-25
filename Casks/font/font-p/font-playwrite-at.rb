cask "font-playwrite-at" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwriteat"
  name "Playwrite AT"
  homepage "https://fonts.google.com/specimen/Playwrite+AT"

  font "PlaywriteAT-Italic[wght].ttf"
  font "PlaywriteAT[wght].ttf"

  # No zap stanza required
end
