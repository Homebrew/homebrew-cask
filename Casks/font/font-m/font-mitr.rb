cask "font-mitr" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mitr"
  name "Mitr"
  homepage "https://fonts.google.com/specimen/Mitr"

  font "Mitr-Bold.ttf"
  font "Mitr-ExtraLight.ttf"
  font "Mitr-Light.ttf"
  font "Mitr-Medium.ttf"
  font "Mitr-Regular.ttf"
  font "Mitr-SemiBold.ttf"

  # No zap stanza required
end
