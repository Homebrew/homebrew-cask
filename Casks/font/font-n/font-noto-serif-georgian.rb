cask "font-noto-serif-georgian" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgeorgian/NotoSerifGeorgian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Georgian"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Georgian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Georgian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifGeorgian[wdth,wght].ttf"

  # No zap stanza required
end
