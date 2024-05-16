cask "font-saira-semi-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sairasemicondensed"
  name "Saira Semi Condensed"
  homepage "https://fonts.google.com/specimen/Saira+Semi+Condensed"

  font "SairaSemiCondensed-Black.ttf"
  font "SairaSemiCondensed-Bold.ttf"
  font "SairaSemiCondensed-ExtraBold.ttf"
  font "SairaSemiCondensed-ExtraLight.ttf"
  font "SairaSemiCondensed-Light.ttf"
  font "SairaSemiCondensed-Medium.ttf"
  font "SairaSemiCondensed-Regular.ttf"
  font "SairaSemiCondensed-SemiBold.ttf"
  font "SairaSemiCondensed-Thin.ttf"

  # No zap stanza required
end
