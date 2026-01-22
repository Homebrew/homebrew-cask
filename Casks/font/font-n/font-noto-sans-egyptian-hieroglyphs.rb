cask "font-noto-sans-egyptian-hieroglyphs" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansEgyptianHieroglyphs-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Egyptian Hieroglyphs"
  homepage "https://fonts.google.com/#sans-egyp"

  font "NotoSansEgyptianHieroglyphs-Regular.ttf"

  # No zap stanza required
end
