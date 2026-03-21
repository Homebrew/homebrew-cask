cask "font-noto-sans-lisu" do
  version "2.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslisu/NotoSansLisu%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lisu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lisu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Lisu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansLisu[wght].ttf"

  # No zap stanza required
end
