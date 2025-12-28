cask "font-cubic-11" do
  version "1.450"
  sha256 "26a70b3bd6a823ed1436628bf36ff61248f3cf1d020843b51168f6aab57022ca"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11.ttf"

  # No zap stanza required
end
