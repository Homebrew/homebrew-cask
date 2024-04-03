cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.5.5"
  sha256 arm:   "b190b69641bcf8fe7e95bc1d7bf9157385ba82f11535f31c21aef13ed8883280",
         intel: "4dff15e2433c8f194f89a56e27176ee81afd6d49837fb3270d927fbb99cfab54"

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
