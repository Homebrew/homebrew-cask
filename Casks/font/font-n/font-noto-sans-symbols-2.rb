cask "font-noto-sans-symbols-2" do
  version "2.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssymbols2/NotoSansSymbols2-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Symbols 2"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Symbols+2"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Symbols 2",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSymbols2-Regular.ttf"

  # No zap stanza required
end
