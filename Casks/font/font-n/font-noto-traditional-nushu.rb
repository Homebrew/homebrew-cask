cask "font-noto-traditional-nushu" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nototraditionalnushu/NotoTraditionalNushu%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Traditional Nushu"
  homepage "https://fonts.google.com/specimen/Noto+Traditional+Nushu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Traditional Nushu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoTraditionalNushu[wght].ttf"

  # No zap stanza required
end
