cask "font-noto-sans-myanmar-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosansmyanmarui"
  name "Noto Sans Myanmar UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Myanmar"

  font "NotoSansMyanmarUI-Black.ttf"
  font "NotoSansMyanmarUI-Bold.ttf"
  font "NotoSansMyanmarUI-ExtraBold.ttf"
  font "NotoSansMyanmarUI-ExtraLight.ttf"
  font "NotoSansMyanmarUI-Light.ttf"
  font "NotoSansMyanmarUI-Medium.ttf"
  font "NotoSansMyanmarUI-Regular.ttf"
  font "NotoSansMyanmarUI-SemiBold.ttf"
  font "NotoSansMyanmarUI-Thin.ttf"

  # No zap stanza required
end
