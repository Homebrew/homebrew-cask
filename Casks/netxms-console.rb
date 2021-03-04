cask "netxms-console" do
  version "3.8.194"
  sha256 "28c4a33f8faa280e3477836df6545b3eef405a701cfda3188e75f1edc398e1b5"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
