cask "netxms-console" do
  version "3.4.310"
  sha256 "77dcf97b58a79e52e123f4e46558211dd8def99fbb9a9442d0723ca29218097c"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console.app"

  zap trash: "~/.nxmc"
end
