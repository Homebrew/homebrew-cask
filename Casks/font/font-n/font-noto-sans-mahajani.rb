cask "font-noto-sans-mahajani" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmahajani/NotoSansMahajani-Regular.ttf"
  name "Noto Sans Mahajani"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mahajani"

  font "NotoSansMahajani-Regular.ttf"

  zap :not_required
end
