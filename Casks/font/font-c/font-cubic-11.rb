cask "font-cubic-11" do
  version "1.451"
  sha256 "dfd7ec42f0fd1ff5c3bd5093b58dfa3cc6779c18df1f855c02ebac7e79dc15fe"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11.ttf"

  # No zap stanza required
end
