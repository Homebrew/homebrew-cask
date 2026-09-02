cask "font-noto-sans-anatolian-hieroglyphs" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansanatolianhieroglyphs/NotoSansAnatolianHieroglyphs-Regular.ttf"
  name "Noto Sans Anatolian Hieroglyphs"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Anatolian+Hieroglyphs"

  font "NotoSansAnatolianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
