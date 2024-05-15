cask "font-hind-vadodara" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hindvadodara"
  name "Hind Vadodara"
  homepage "https://fonts.google.com/specimen/Hind+Vadodara"

  font "HindVadodara-Bold.ttf"
  font "HindVadodara-Light.ttf"
  font "HindVadodara-Medium.ttf"
  font "HindVadodara-Regular.ttf"
  font "HindVadodara-SemiBold.ttf"

  # No zap stanza required
end
