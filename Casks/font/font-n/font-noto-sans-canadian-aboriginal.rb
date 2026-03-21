cask "font-noto-sans-canadian-aboriginal" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscanadianaboriginal/NotoSansCanadianAboriginal%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Canadian Aboriginal"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Canadian+Aboriginal"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Canadian Aboriginal",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCanadianAboriginal[wght].ttf"

  # No zap stanza required
end
