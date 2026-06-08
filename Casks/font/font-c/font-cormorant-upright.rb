cask "font-cormorant-upright" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantupright"
  name "Cormorant Upright"
  homepage "https://fonts.google.com/specimen/Cormorant+Upright"

  font "CormorantUpright-Bold.ttf"
  font "CormorantUpright-Light.ttf"
  font "CormorantUpright-Medium.ttf"
  font "CormorantUpright-Regular.ttf"
  font "CormorantUpright-SemiBold.ttf"

  # No zap stanza required
end
