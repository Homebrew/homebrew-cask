cask "font-cubic-11" do
  version "1.300"
  sha256 "1db4f204bbac140a386216ec7762eb616eb2cb67f8dc56d8de3f14de0d28b21a"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11_#{version}_R.ttf"

  # No zap stanza required
end
