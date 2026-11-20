cask "font-noto-sans-lepcha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslepcha/NotoSansLepcha-Regular.ttf"
  name "Noto Sans Lepcha"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lepcha"

  font "NotoSansLepcha-Regular.ttf"

  zap :not_required
end
