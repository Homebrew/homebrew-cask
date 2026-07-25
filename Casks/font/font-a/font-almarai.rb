cask "font-almarai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/almarai"
  name "Almarai"
  homepage "https://fonts.google.com/specimen/Almarai"

  font "Almarai-Bold.ttf"
  font "Almarai-ExtraBold.ttf"
  font "Almarai-Light.ttf"
  font "Almarai-Regular.ttf"

  # No zap stanza required
end
