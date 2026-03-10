cask "netxms-console" do
  version "6.0.4"
  sha256 "bb02847d236580cb21fec58cd33011062b855a4997570c534103cb11c48e7484"

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
