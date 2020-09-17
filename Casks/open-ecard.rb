cask "open-ecard" do
  version "1.4.4"
  sha256 "a7c3e9475d4e4cc2ae3bbfd418ce21f97bb568e5f5f96252f6d433a418de0cd9"

  # github.com/ecsec/open-ecard/ was verified as official when first introduced to the cask
  url "https://github.com/ecsec/open-ecard/releases/download/#{version}/Open-eCard-App-#{version}.dmg"
  appcast "https://github.com/ecsec/open-ecard/releases.atom"
  name "Open eCard"
  desc "Client side implementation of the eCard-API-Framework (BSI TR-03112)"
  homepage "https://www.openecard.org/"

  app "Open-eCard-App.app"

  zap trash: "~/.openecard"
end
