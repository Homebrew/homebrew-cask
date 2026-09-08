cask "font-noto-sans-kharoshthi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskharoshthi/NotoSansKharoshthi-Regular.ttf"
  name "Noto Sans Kharoshthi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kharoshthi"

  font "NotoSansKharoshthi-Regular.ttf"

  # No zap stanza required
end
