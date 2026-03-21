cask "font-noto-sans-balinese" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbalinese/NotoSansBalinese%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Balinese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Balinese"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Balinese",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansBalinese[wght].ttf"

  # No zap stanza required
end
