cask "font-noto-sans-indic-siyaq-numbers" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansindicsiyaqnumbers/NotoSansIndicSiyaqNumbers-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Indic Siyaq Numbers"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Indic+Siyaq+Numbers"

  font "NotoSansIndicSiyaqNumbers-Regular.ttf"

  # No zap stanza required
end
