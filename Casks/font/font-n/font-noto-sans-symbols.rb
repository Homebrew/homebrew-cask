cask "font-noto-sans-symbols" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosanssymbols"
  name "Noto Sans Symbols"
  homepage "https://fonts.google.com/noto/specimen/Noto+Sans+Symbols"

  font "NotoSansSymbols[wght].ttf"

  # No zap stanza required
end
