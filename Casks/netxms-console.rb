cask "netxms-console" do
  version "4.1.404"
  sha256 "f633d7f322d3fc4da9c5b2a3c8843fa19a2117162ebae5ae08c6e12513da36e0"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.org/download"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
