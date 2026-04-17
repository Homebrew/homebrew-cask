cask "netxms-console" do
  version "6.1.1"
  sha256 "eeaafb592051c41fdd2576699ee319f01c9f1d0844e13f18bf94fe7d0474d9ed"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "NetXMS #{version.major_minor}.app"

  zap trash: "~/.nxmc"
end
