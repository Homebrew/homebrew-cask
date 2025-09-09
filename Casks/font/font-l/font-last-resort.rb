cask "font-last-resort" do
  version "17.000"
  sha256 "c25223fd85c6dbb4cc720a5ae77c15bc1b5317b4488e37ba648180cbe1682a5e"

  url "https://github.com/unicode-org/last-resort-font/releases/download/#{version}/LastResort-Regular.ttf"
  name "Last Resort"
  homepage "https://github.com/unicode-org/last-resort-font"

  font "LastResort-Regular.ttf"

  # No zap stanza required
end
