cask "font-noto-rashi-hebrew" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notorashihebrew/NotoRashiHebrew%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Rashi Hebrew"
  homepage "https://fonts.google.com/specimen/Noto+Rashi+Hebrew"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Rashi Hebrew",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoRashiHebrew[wght].ttf"

  # No zap stanza required
end
