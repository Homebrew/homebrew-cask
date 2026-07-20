cask "font-tiktok-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tiktoksans/TikTokSans%5Bopsz%2Cslnt%2Cwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "TikTok Sans"
  homepage "https://fonts.google.com/specimen/TikTok+Sans"

  font "TikTokSans[opsz,slnt,wdth,wght].ttf"

  # No zap stanza required
end
