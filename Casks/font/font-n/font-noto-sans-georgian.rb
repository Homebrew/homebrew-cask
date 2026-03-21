cask "font-noto-sans-georgian" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgeorgian/NotoSansGeorgian%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Georgian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Georgian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Georgian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansGeorgian[wdth,wght].ttf"

  # No zap stanza required
end
