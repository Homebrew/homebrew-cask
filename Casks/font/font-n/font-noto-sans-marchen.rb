cask "font-noto-sans-marchen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmarchen/NotoSansMarchen-Regular.ttf"
  name "Noto Sans Marchen"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Marchen"

  font "NotoSansMarchen-Regular.ttf"

  # No zap stanza required
end
