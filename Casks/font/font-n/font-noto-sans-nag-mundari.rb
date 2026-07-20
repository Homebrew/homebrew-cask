cask "font-noto-sans-nag-mundari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnagmundari/NotoSansNagMundari%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Nag Mundari"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Nag+Mundari"

  font "NotoSansNagMundari[wght].ttf"

  # No zap stanza required
end
