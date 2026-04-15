cask "netxms-console" do
  version "6.1.0"
  sha256 "81960771858b3233d73fa0e07facccbd664d0d4a6f9b65bc27b00995cb1b4a64"

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
