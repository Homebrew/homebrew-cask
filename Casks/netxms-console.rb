cask "netxms-console" do
  version "3.8.166"
  sha256 "21452e8b86c9d7e56d082ccd46b8a7eb1158c51711ad57b20493dee2277d69fe"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
