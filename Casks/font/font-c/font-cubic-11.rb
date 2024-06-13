cask "font-cubic-11" do
  version "1.200"
  sha256 "903e9dc53652edd85273766f30329a83503a8fe147f536f63f853646cf04d676"

  url "https://github.com/ACh-K/Cubic-11/archive/refs/tags/v#{version}.tar.gz"
  name "Cubic 11"
  name "俐方體11號"
  desc "Open-source 11x11 Traditional Chinese bitmap font"
  homepage "https://github.com/ACh-K/Cubic-11"

  font "Cubic-11-#{version}/fonts/ttf/Cubic_11_#{version}_R.ttf"

  # No zap stanza required
end
