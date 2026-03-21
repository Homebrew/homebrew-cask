cask "font-noto-sans-lao" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslao/NotoSansLao%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lao"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lao"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Lao",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLao[wdth,wght].ttf"

  # No zap stanza required
end
