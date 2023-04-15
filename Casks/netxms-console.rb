cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.3.4"
  sha256 arm:   "746e359d2f1b7372947533603ccb89c4c796e4e355d113942db80b7ab1299837",
         intel: "77e8e36fb0216e4d80cb5751ade43807ea5dcd20b06795681b65f96a02e0b84b"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.org/download"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
