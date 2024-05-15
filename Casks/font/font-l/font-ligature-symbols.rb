cask "font-ligature-symbols" do
  version :latest
  sha256 :no_check

  url "https://kudakurage.com/ligature_symbols/LigatureSymbols.zip"
  name "Ligature Symbols"
  homepage "https://kudakurage.com/ligature_symbols/"

  font "LigatureSymbols/LigatureSymbols-2.11.otf"

  # No zap stanza required
end
