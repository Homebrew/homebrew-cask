cask "font-noto-sans-egyptian-hieroglyphs" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansegyptianhieroglyphs/NotoSansEgyptianHieroglyphs-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Egyptian Hieroglyphs"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Egyptian+Hieroglyphs"

  font "NotoSansEgyptianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
