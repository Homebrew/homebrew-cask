cask "font-noto-sans-symbols" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssymbols/NotoSansSymbols%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Symbols"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Symbols"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Symbols",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSymbols[wght].ttf"

  # No zap stanza required
end
