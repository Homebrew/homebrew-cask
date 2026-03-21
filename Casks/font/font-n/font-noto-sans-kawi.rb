cask "font-noto-sans-kawi" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskawi/NotoSansKawi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kawi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kawi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Kawi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansKawi[wght].ttf"

  # No zap stanza required
end
