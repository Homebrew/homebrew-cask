cask "font-alegreya-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alegreyasc"
  name "Alegreya SC"
  homepage "https://fonts.google.com/specimen/Alegreya+SC"

  font "AlegreyaSC-Black.ttf"
  font "AlegreyaSC-BlackItalic.ttf"
  font "AlegreyaSC-Bold.ttf"
  font "AlegreyaSC-BoldItalic.ttf"
  font "AlegreyaSC-ExtraBold.ttf"
  font "AlegreyaSC-ExtraBoldItalic.ttf"
  font "AlegreyaSC-Italic.ttf"
  font "AlegreyaSC-Medium.ttf"
  font "AlegreyaSC-MediumItalic.ttf"
  font "AlegreyaSC-Regular.ttf"

  # No zap stanza required
end
