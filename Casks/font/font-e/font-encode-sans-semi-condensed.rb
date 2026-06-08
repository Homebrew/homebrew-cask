cask "font-encode-sans-semi-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/encodesanssemicondensed"
  name "Encode Sans Semi Condensed"
  homepage "https://fonts.google.com/specimen/Encode+Sans+Semi+Condensed"

  font "EncodeSansSemiCondensed-Black.ttf"
  font "EncodeSansSemiCondensed-Bold.ttf"
  font "EncodeSansSemiCondensed-ExtraBold.ttf"
  font "EncodeSansSemiCondensed-ExtraLight.ttf"
  font "EncodeSansSemiCondensed-Light.ttf"
  font "EncodeSansSemiCondensed-Medium.ttf"
  font "EncodeSansSemiCondensed-Regular.ttf"
  font "EncodeSansSemiCondensed-SemiBold.ttf"
  font "EncodeSansSemiCondensed-Thin.ttf"

  # No zap stanza required
end
