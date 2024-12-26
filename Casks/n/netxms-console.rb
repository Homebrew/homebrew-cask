cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.1.2"
  sha256 arm:   "69d1cf0e5920e615a8721e6c5cdeea0f566e8b736dba0069ee6bf506cb6a0267",
         intel: "8ead118b0e271d016a60989f4f1a1cce4f17e5573b82e2f732079213fecd5f74"

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
