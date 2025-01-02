cask "font-ligature-symbols" do
  version "2.11"
  sha256 :no_check

  url "https://kudakurage.com/ligature_symbols/LigatureSymbols.zip"
  name "Ligature Symbols"
  homepage "https://kudakurage.com/ligature_symbols/"

  disable! date: "2025-01-02", because: :no_longer_available

  font "LigatureSymbols/LigatureSymbols-#{version}.otf"

  # No zap stanza required
end
