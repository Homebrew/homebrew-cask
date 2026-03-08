cask "font-noto-serif-myanmar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notoserifmyanmar"
  name "Noto Serif Myanmar"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Myanmar"

  font "NotoSerifMyanmar-Black.ttf"
  font "NotoSerifMyanmar-Bold.ttf"
  font "NotoSerifMyanmar-ExtraBold.ttf"
  font "NotoSerifMyanmar-ExtraLight.ttf"
  font "NotoSerifMyanmar-Light.ttf"
  font "NotoSerifMyanmar-Medium.ttf"
  font "NotoSerifMyanmar-Regular.ttf"
  font "NotoSerifMyanmar-SemiBold.ttf"
  font "NotoSerifMyanmar-Thin.ttf"

  # No zap stanza required
end
