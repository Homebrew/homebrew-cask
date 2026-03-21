cask "font-noto-serif-armenian" do
  version "2.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifarmenian/NotoSerifArmenian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Armenian"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Armenian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Armenian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifArmenian[wdth,wght].ttf"

  # No zap stanza required
end
