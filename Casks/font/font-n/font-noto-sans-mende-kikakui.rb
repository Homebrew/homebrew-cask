cask "font-noto-sans-mende-kikakui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmendekikakui/NotoSansMendeKikakui-Regular.ttf"
  name "Noto Sans Mende Kikakui"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mende+Kikakui"

  font "NotoSansMendeKikakui-Regular.ttf"

  zap :not_required
end
