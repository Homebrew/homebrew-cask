cask "font-noto-sans-khmer" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhmer/NotoSansKhmer%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khmer"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khmer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Khmer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKhmer[wdth,wght].ttf"

  # No zap stanza required
end
