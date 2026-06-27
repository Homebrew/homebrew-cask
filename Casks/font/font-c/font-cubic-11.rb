cask "font-cubic-11" do
  version "1.500"
  sha256 "3f97839251c05e07d8ef24284f0804c11af7da128febc744185a43ec1ab511f5"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11.ttf"

  # No zap stanza required
end
