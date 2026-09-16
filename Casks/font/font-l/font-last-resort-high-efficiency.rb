cask "font-last-resort-high-efficiency" do
  version "18.000"
  sha256 "cb7c2262cb86a33e7bdfabd0a51746e738b0dd10924126c4530c414c5fc7e4b6"

  url "https://github.com/unicode-org/last-resort-font/releases/download/#{version}/LastResortHE-Regular.ttf"
  name "Last Resort High-Efficiency"
  homepage "https://github.com/unicode-org/last-resort-font"

  font "LastResortHE-Regular.ttf"

  # No zap stanza required
end
