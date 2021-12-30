cask "netxms-console" do
  version "3.9.361"
  sha256 "31b34325fd4e6fd0e6b06177099451f37f6f125f027444a1df52b2f34e76677a"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.org/download"
    regex(%r{href=.*?/nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
