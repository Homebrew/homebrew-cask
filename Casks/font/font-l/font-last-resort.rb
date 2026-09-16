cask "font-last-resort" do
  version "18.000"
  sha256 "ca7df8948cec84240f19508a17a74de037c98ba3a54e1aaa50ea6edbbdc37f64"

  url "https://github.com/unicode-org/last-resort-font/releases/download/#{version}/LastResort-Regular.ttf"
  name "Last Resort"
  homepage "https://github.com/unicode-org/last-resort-font"

  font "LastResort-Regular.ttf"

  # No zap stanza required
end
