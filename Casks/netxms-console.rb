cask "netxms-console" do
  version "3.6.252"
  sha256 "e6a74fa5d6141e80404bbf9c96c4e6917a5bf214a3268944415d50348348a92e"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console.app"

  zap trash: "~/.nxmc"
end
