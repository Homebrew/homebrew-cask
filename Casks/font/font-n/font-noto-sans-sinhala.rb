cask "font-noto-sans-sinhala" do
  version "2.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssinhala/NotoSansSinhala%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sinhala"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sinhala"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Sinhala",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSinhala[wdth,wght].ttf"

  # No zap stanza required
end
