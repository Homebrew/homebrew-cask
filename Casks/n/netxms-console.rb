cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.4"
  sha256 arm:   "a5a43d25fa444fa3275119ba28e35dd81740c6245a63a50e5c02e3b5b5006f57",
         intel: "b6488ed77a552d9b712ea5b7d00fbd3e9b31a8d79293e16ff8fc78cb2cb1d0ce"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
