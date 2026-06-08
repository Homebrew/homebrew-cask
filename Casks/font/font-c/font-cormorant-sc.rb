cask "font-cormorant-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantsc"
  name "Cormorant SC"
  homepage "https://fonts.google.com/specimen/Cormorant+SC"

  font "CormorantSC-Bold.ttf"
  font "CormorantSC-Light.ttf"
  font "CormorantSC-Medium.ttf"
  font "CormorantSC-Regular.ttf"
  font "CormorantSC-SemiBold.ttf"

  # No zap stanza required
end
