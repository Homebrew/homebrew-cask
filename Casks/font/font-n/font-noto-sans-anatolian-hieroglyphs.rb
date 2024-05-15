cask "font-noto-sans-anatolian-hieroglyphs" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansAnatolianHieroglyphs-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Anatolian Hieroglyphs"
  homepage "https://www.google.com/get/noto/#sans-hluw"

  font "NotoSansAnatolianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
