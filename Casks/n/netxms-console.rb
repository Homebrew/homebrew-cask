cask "netxms-console" do
  version "6.2.0"
  sha256 "01c5430603c9d2bc265943cf5653b9dc56b1b202a9296abb00f363018191c646"

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
