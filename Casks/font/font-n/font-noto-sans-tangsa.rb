cask "font-noto-sans-tangsa" do
  version "1.506"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstangsa/NotoSansTangsa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tangsa"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tangsa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tangsa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTangsa[wght].ttf"

  # No zap stanza required
end
