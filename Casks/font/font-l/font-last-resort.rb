cask "font-last-resort" do
  version "15.100"
  sha256 "2c25999fae0a09f4cf5d1c084729b43e81296f497c59e5891a710a7744c724ff"

  url "https://github.com/unicode-org/last-resort-font/releases/download/#{version}/LastResort-Regular.ttf"
  name "Last Resort"
  homepage "https://github.com/unicode-org/last-resort-font"

  font "LastResort-Regular.ttf"

  # No zap stanza required
end
