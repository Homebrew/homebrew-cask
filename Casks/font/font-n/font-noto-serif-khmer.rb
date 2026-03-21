cask "font-noto-serif-khmer" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkhmer/NotoSerifKhmer%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Khmer"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Khmer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Khmer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifKhmer[wdth,wght].ttf"

  # No zap stanza required
end
