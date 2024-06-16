cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.0.4"
  sha256 arm:   "7b738c14718ededcd795edce68422f9ff561d8f9163c01ac12381bdd36d6f3c1",
         intel: "b86c008b2b37271cd2a09000831a7f8b85f19a26136b01e4ae7c1a0ac065ffdd"

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
