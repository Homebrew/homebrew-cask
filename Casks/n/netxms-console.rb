cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.1.4"
  sha256 arm:   "939de5537cc4addc5ce2eeacb707d7258b4f0509b63a5d1f4252fc668766847a",
         intel: "551c256e3bf6bacad016d103a50e62fff6ef8fb521875a413d400fa109d215fb"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
