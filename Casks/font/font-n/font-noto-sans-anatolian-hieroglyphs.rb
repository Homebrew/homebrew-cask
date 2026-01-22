cask "font-noto-sans-anatolian-hieroglyphs" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansAnatolianHieroglyphs-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Anatolian Hieroglyphs"
  homepage "https://fonts.google.com/#sans-hluw"

  font "NotoSansAnatolianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
