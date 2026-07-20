cask "netxms-console" do
  version "6.2.1"
  sha256 "69f431412d043ef2a6c8b00750917bd586c7a48f8620c199bf007eae482d0442"

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
