cask "netxms-console" do
  version "6.0.5"
  sha256 "efadd434959f7b7d84dad46fc92e8ead9863ed53c04d138412f8b18bb60d1092"

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
