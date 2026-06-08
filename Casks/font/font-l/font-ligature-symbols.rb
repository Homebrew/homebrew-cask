cask "font-ligature-symbols" do
  version "2.11"
  sha256 :no_check

  url "https://kudakurage.com/ligature_symbols/LigatureSymbols.zip"
  name "Ligature Symbols"
  homepage "https://kudakurage.com/ligature_symbols/"

  livecheck do
    url :homepage
    regex(/ver\.\s*v?(\d+(?:\.\d+)+)/i)
  end

  font "LigatureSymbols/LigatureSymbols-#{version}.otf"

  # No zap stanza required
end
