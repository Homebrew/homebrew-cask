cask "font-noto-sans-kr" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskr/NotoSansKR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans KR"
  homepage "https://fonts.google.com/specimen/Noto+Sans+KR"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans KR",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKR[wght].ttf"

  # No zap stanza required
end
