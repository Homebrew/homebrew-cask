cask "font-noto-sans-thaana" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansthaana/NotoSansThaana%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Thaana"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thaana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Thaana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansThaana[wght].ttf"

  # No zap stanza required
end
