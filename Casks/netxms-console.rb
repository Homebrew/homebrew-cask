cask "netxms-console" do
  version "3.6.302"
  sha256 "c1a6ae2b94b7579f43f5552ed8d011678396f41ea90bbed633687477e8bebb05"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console.app"

  zap trash: "~/.nxmc"
end
