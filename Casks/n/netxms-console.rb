cask "netxms-console" do
  version "6.0.3"
  sha256 "16be895c6df78a4958c9a5a1a1b12005120922627272fd85ddc582eab419c74b"

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
