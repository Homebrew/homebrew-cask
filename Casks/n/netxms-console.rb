cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.0.3"
  sha256 arm:   "02e0912cb3ae78ec071e274a090b17db934fc4c581d351aa7e042eff6e41232d",
         intel: "78357d31480f62e70655f8731ad65ea04600d0a85170ce6dfbd49d7cd679783f"

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
