cask "font-last-resort-high-efficiency" do
  version "17.000"
  sha256 "3a936fe2379e9e164a8f9819095cbf53d9305a2d08532d9be5b496f4be45bcde"

  url "https://github.com/unicode-org/last-resort-font/releases/download/#{version}/LastResortHE-Regular.ttf"
  name "Last Resort High-Efficiency"
  homepage "https://github.com/unicode-org/last-resort-font"

  font "LastResortHE-Regular.ttf"

  # No zap stanza required
end
