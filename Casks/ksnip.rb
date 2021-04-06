cask "ksnip" do
  version "1.8.2"
  sha256 "635d454aa13e697885dff46b65ec73a0b05c91bc6d3a5091c74d9bad9187ec09"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
