cask "font-last-resort-high-efficiency" do
  version "15.100"
  sha256 "74f93a8fb3ab8756e0e86cb3c2c0783fda10bdea6f979d5817869ba7284e56ca"

  url "https://github.com/unicode-org/last-resort-font/releases/download/#{version}/LastResortHE-Regular.ttf"
  name "Last Resort High-Efficiency"
  homepage "https://github.com/unicode-org/last-resort-font"

  font "LastResortHE-Regular.ttf"

  # No zap stanza required
end
