cask "font-noto-sans-thai" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansthai/NotoSansThai%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Thai"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thai"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Thai",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansThai[wdth,wght].ttf"

  # No zap stanza required
end
