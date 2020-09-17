cask "netxms-console" do
  version "3.4.318"
  sha256 "4b8eaa70d9dc5b3bca3c7655c127b39ddba7b47c735cd00e0246351eed3f941c"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console.app"

  zap trash: "~/.nxmc"
end
