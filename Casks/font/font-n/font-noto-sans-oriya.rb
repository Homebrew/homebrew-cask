cask "font-noto-sans-oriya" do
  version "2.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoriya/NotoSansOriya%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Oriya"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Oriya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Oriya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOriya[wdth,wght].ttf"

  # No zap stanza required
end
