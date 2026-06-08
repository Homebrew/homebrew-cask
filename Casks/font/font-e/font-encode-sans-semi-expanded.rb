cask "font-encode-sans-semi-expanded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/encodesanssemiexpanded"
  name "Encode Sans Semi Expanded"
  homepage "https://fonts.google.com/specimen/Encode+Sans+Semi+Expanded"

  font "EncodeSansSemiExpanded-Black.ttf"
  font "EncodeSansSemiExpanded-Bold.ttf"
  font "EncodeSansSemiExpanded-ExtraBold.ttf"
  font "EncodeSansSemiExpanded-ExtraLight.ttf"
  font "EncodeSansSemiExpanded-Light.ttf"
  font "EncodeSansSemiExpanded-Medium.ttf"
  font "EncodeSansSemiExpanded-Regular.ttf"
  font "EncodeSansSemiExpanded-SemiBold.ttf"
  font "EncodeSansSemiExpanded-Thin.ttf"

  # No zap stanza required
end
