cask "launchie" do
  version "1.3.0"
  sha256 "e84d5f0ffe36730c28683b4a6a4e2c235270a51f1b218da1b47ca76a33cbe11d"

  url "https://github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/releases/download/#{version}/Launchie_#{version}.dmg",
      verified: "github.com/nick-friedrich/launchie-launchpad-replacement-mac-os/"
  name "Launchie"
  desc "Launchpad replacement"
  homepage "https://www.launchie.app/"

  depends_on macos: ">= :tahoe"

  app "Launchie.app"

  zap trash: [
    "~/Library/Application Scripts/de.nick-friedrich.Launchie",
    "~/Library/Containers/de.nick-friedrich.Launchie",
  ]
end
