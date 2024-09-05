cask "font-cubic-11" do
  version "1.410"
  sha256 "249b587a3a2698f9ae70a609ff8d75a46083c6da8b30491d1d46341ef63aabdd"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11.ttf"

  # No zap stanza required
end
