cask "font-hind-siliguri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindsiliguri"
  name "Hind Siliguri"
  homepage "https://fonts.google.com/specimen/Hind+Siliguri"

  font "HindSiliguri-Bold.ttf"
  font "HindSiliguri-Light.ttf"
  font "HindSiliguri-Medium.ttf"
  font "HindSiliguri-Regular.ttf"
  font "HindSiliguri-SemiBold.ttf"

  # No zap stanza required
end
