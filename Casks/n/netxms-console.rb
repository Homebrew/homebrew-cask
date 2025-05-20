cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.2"
  sha256 arm:   "658683b89b304e14b6c18b08057f1510bbba0b867b6c0788cc349c295d665eec",
         intel: "fe7575f561b48cc20bbbeb129647b8718f00180f6a79492938de8a685dda54d0"

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
