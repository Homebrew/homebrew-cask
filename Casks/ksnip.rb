cask "ksnip" do
  version "1.7.3"
  sha256 "df78187476c7d26e7551785d34b4050a51cdcfa2f781d1ce60f44b24702ba91f"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  appcast "https://github.com/ksnip/ksnip/releases.atom"
  name "ksnip"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
