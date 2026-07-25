cask "font-playwrite-gb-s-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwritegbsguides"
  name "Playwrite GB S Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+GB+S+Guides"

  font "PlaywriteGBSGuides-Italic.ttf"
  font "PlaywriteGBSGuides-Regular.ttf"

  # No zap stanza required
end
