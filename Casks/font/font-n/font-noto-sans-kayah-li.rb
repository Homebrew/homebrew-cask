cask "font-noto-sans-kayah-li" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskayahli/NotoSansKayahLi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kayah Li"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kayah+Li"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Kayah Li",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKayahLi[wght].ttf"

  # No zap stanza required
end
