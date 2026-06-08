cask "font-saira-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sairacondensed"
  name "Saira Condensed"
  homepage "https://fonts.google.com/specimen/Saira+Condensed"

  font "SairaCondensed-Black.ttf"
  font "SairaCondensed-Bold.ttf"
  font "SairaCondensed-ExtraBold.ttf"
  font "SairaCondensed-ExtraLight.ttf"
  font "SairaCondensed-Light.ttf"
  font "SairaCondensed-Medium.ttf"
  font "SairaCondensed-Regular.ttf"
  font "SairaCondensed-SemiBold.ttf"
  font "SairaCondensed-Thin.ttf"

  # No zap stanza required
end
