cask "font-cubic-11" do
  version "1.420"
  sha256 "f56efc1e1e4e5f77062e88e9c308bf1d11266084ab57916c3dc40f61e67fd805"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11.ttf"

  # No zap stanza required
end
