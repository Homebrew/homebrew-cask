cask "open-ecard" do
  version "1.4.5"
  sha256 "82ba03dd92dbb45d2bafec04330aea4ccb98f2520e687dc1e3986777ed9306d6"

  url "https://github.com/ecsec/open-ecard/releases/download/#{version}/Open-eCard-App-#{version}.dmg",
      verified: "github.com/ecsec/open-ecard/"
  appcast "https://github.com/ecsec/open-ecard/releases.atom"
  name "Open eCard"
  desc "Client side implementation of the eCard-API-Framework (BSI TR-03112)"
  homepage "https://www.openecard.org/"

  app "Open-eCard-App.app"

  zap trash: "~/.openecard"
end
