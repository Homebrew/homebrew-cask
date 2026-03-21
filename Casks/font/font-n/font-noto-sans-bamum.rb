cask "font-noto-sans-bamum" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbamum/NotoSansBamum%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Bamum"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Bamum"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Bamum",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansBamum[wght].ttf"

  # No zap stanza required
end
