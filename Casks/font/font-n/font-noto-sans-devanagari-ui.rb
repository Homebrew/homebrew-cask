cask "font-noto-sans-devanagari-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosansdevanagariui"
  name "Noto Sans Devanagari UI"
  homepage "https://fonts.google.com/noto/specimen/Noto+Sans+Devanagari"

  font "NotoSansDevanagariUI-Black.ttf"
  font "NotoSansDevanagariUI-Bold.ttf"
  font "NotoSansDevanagariUI-ExtraBold.ttf"
  font "NotoSansDevanagariUI-ExtraLight.ttf"
  font "NotoSansDevanagariUI-Light.ttf"
  font "NotoSansDevanagariUI-Medium.ttf"
  font "NotoSansDevanagariUI-Regular.ttf"
  font "NotoSansDevanagariUI-SemiBold.ttf"
  font "NotoSansDevanagariUI-Thin.ttf"

  # No zap stanza required
end
