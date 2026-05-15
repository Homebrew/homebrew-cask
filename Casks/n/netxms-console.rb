cask "netxms-console" do
  version "6.1.2"
  sha256 "c365f4fa6a1dc99af810f20dcfa23609dfa2a5313e8b166bbb6f5878d7c448f3"

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
