cask "font-hind-mysuru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindmysuru"
  name "Hind Mysuru"
  homepage "https://fonts.google.com/specimen/Hind+Mysuru"

  font "HindMysuru-Bold.ttf"
  font "HindMysuru-Light.ttf"
  font "HindMysuru-Medium.ttf"
  font "HindMysuru-Regular.ttf"
  font "HindMysuru-SemiBold.ttf"

  # No zap stanza required
end
