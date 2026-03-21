cask "font-noto-sans-sora-sompeng" do
  version "2.101"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssorasompeng/NotoSansSoraSompeng%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sora Sompeng"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sora+Sompeng"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Sora Sompeng",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSoraSompeng[wght].ttf"

  # No zap stanza required
end
