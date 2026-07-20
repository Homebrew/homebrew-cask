cask "font-martel-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/martelsans"
  name "Martel Sans"
  homepage "https://fonts.google.com/specimen/Martel+Sans"

  font "MartelSans-Black.ttf"
  font "MartelSans-Bold.ttf"
  font "MartelSans-ExtraBold.ttf"
  font "MartelSans-ExtraLight.ttf"
  font "MartelSans-Light.ttf"
  font "MartelSans-Regular.ttf"
  font "MartelSans-SemiBold.ttf"

  # No zap stanza required
end
