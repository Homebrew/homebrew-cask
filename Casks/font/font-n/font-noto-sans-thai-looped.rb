cask "font-noto-sans-thai-looped" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosansthailooped"
  name "Noto Sans Thai Looped"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thai+Looped"

  font "NotoSansThaiLooped-Black.ttf"
  font "NotoSansThaiLooped-Bold.ttf"
  font "NotoSansThaiLooped-ExtraBold.ttf"
  font "NotoSansThaiLooped-ExtraLight.ttf"
  font "NotoSansThaiLooped-Light.ttf"
  font "NotoSansThaiLooped-Medium.ttf"
  font "NotoSansThaiLooped-Regular.ttf"
  font "NotoSansThaiLooped-SemiBold.ttf"
  font "NotoSansThaiLooped-Thin.ttf"

  # No zap stanza required
end
