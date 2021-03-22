cask "simtoolkitpro" do
  version "0.6.73"
  sha256 "f2a6a57d27052498b25bb16fad46d24a25c5ea7d5435e26c27736c76acf7f780"

  url "https://simtoolkitpro-cdn.net/automated-builds/SimToolkitPro-#{version}.Setup.dmg",
      verified: "simtoolkitpro-cdn.net"
  name "SimToolkitPro"
  desc "EFB software for your simulator"
  homepage "https://simtoolkitpro.co.uk/"

  app "SimToolkitPro.app"

  zap trash: [
    "~/Documents/SimToolkitPro",
    "~/Library/Application Support/simtoolkitpro",
  ]
end
