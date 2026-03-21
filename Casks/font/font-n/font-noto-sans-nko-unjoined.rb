cask "font-noto-sans-nko-unjoined" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnkounjoined/NotoSansNKoUnjoined%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans NKo Unjoined"
  homepage "https://fonts.google.com/specimen/Noto+Sans+NKo+Unjoined"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans NKo Unjoined",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansNKoUnjoined[wght].ttf"

  # No zap stanza required
end
