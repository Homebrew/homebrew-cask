cask "font-noto-sans-telugu" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstelugu/NotoSansTelugu%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Telugu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Telugu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Telugu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTelugu[wdth,wght].ttf"

  # No zap stanza required
end
