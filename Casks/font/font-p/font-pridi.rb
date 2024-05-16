cask "font-pridi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/pridi"
  name "Pridi"
  homepage "https://fonts.google.com/specimen/Pridi"

  font "Pridi-Bold.ttf"
  font "Pridi-ExtraLight.ttf"
  font "Pridi-Light.ttf"
  font "Pridi-Medium.ttf"
  font "Pridi-Regular.ttf"
  font "Pridi-SemiBold.ttf"

  # No zap stanza required
end
