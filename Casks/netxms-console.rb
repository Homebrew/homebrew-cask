cask "netxms-console" do
  version "3.5.90"
  sha256 "73efa390f4af04c9936f480473894513bd0ff47f714fb486cf27fd3bc32c9d61"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console.app"

  zap trash: "~/.nxmc"
end
