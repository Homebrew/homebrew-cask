cask "open-ecard" do
  version "1.4.3"
  sha256 "02063353e042b3cb03298f897bfee77685ffa227a35842193c1c5b1f6941c646"

  # github.com/ecsec/open-ecard/ was verified as official when first introduced to the cask
  url "https://github.com/ecsec/open-ecard/releases/download/#{version}/Open-eCard-App-#{version}.dmg"
  appcast "https://github.com/ecsec/open-ecard/releases.atom"
  name "Open eCard"
  homepage "https://www.openecard.org/"

  app "Open-eCard-App.app"

  zap trash: "~/.openecard"
end
