cask "netxms-console" do
  version "3.8.226"
  sha256 "d91e42a83b3f5943a35edf32b1e995e05b2d7dd63ddb17a095a28de64ef28924"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
