cask "ksnip" do
  version "1.8.1"
  sha256 "5900023835668cac169ddc9ec5cea8aca44ecc4611dbca068e04a6d879feccf5"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  appcast "https://github.com/ksnip/ksnip/releases.atom"
  name "ksnip"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
