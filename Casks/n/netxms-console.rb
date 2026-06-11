cask "netxms-console" do
  version "6.1.4"
  sha256 "c2922ecd1e1ed148be491d91268a50d3d890a712cc616097d0cba6efda14400b"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :big_sur

  app "NetXMS #{version.major_minor}.app"

  zap trash: "~/.nxmc"
end
