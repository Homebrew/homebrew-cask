cask "font-hind-colombo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindcolombo"
  name "Hind Colombo"
  homepage "https://fonts.google.com/specimen/Hind"

  font "HindColombo-Bold.ttf"
  font "HindColombo-Light.ttf"
  font "HindColombo-Medium.ttf"
  font "HindColombo-Regular.ttf"
  font "HindColombo-SemiBold.ttf"

  # No zap stanza required
end
