cask "font-tajawal" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tajawal"
  name "Tajawal"
  homepage "https://fonts.google.com/specimen/Tajawal"

  font "Tajawal-Black.ttf"
  font "Tajawal-Bold.ttf"
  font "Tajawal-ExtraBold.ttf"
  font "Tajawal-ExtraLight.ttf"
  font "Tajawal-Light.ttf"
  font "Tajawal-Medium.ttf"
  font "Tajawal-Regular.ttf"

  # No zap stanza required
end
