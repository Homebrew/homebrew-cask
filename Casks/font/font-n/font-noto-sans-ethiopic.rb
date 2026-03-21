cask "font-noto-sans-ethiopic" do
  version "2.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansethiopic/NotoSansEthiopic%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ethiopic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ethiopic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Ethiopic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansEthiopic[wdth,wght].ttf"

  # No zap stanza required
end
