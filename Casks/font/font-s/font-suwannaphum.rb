cask "font-suwannaphum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/suwannaphum"
  name "Suwannaphum"
  homepage "https://fonts.google.com/specimen/Suwannaphum"

  font "Suwannaphum-Black.ttf"
  font "Suwannaphum-Bold.ttf"
  font "Suwannaphum-Light.ttf"
  font "Suwannaphum-Regular.ttf"
  font "Suwannaphum-Thin.ttf"

  # No zap stanza required
end
