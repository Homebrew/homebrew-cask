cask "font-cubic-11" do
  version "1.400"
  sha256 "662749dc12204c76832883f7edf8523aeeda0a6f59b0b8ceb91d5c67cfa903a5"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11.ttf"

  # No zap stanza required
end
