cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.1.3"
  sha256 arm:   "f8eeade56d907a82aa5c2c9b77550001e8e062e9e92921f54c5f7c3614833ea7",
         intel: "0dcbfae58a0a715eae909e02897737ab8930a9412ce3b97553c5b557c0e412bb"

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
