cask "font-playwrite-gb-j-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwritegbjguides"
  name "Playwrite GB J Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+GB+J+Guides"

  font "PlaywriteGBJGuides-Italic.ttf"
  font "PlaywriteGBJGuides-Regular.ttf"

  # No zap stanza required
end
