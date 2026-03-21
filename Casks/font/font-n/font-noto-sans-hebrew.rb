cask "font-noto-sans-hebrew" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshebrew/NotoSansHebrew%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hebrew"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hebrew"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Hebrew",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansHebrew[wdth,wght].ttf"

  # No zap stanza required
end
