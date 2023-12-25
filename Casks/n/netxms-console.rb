cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.5.0"
  sha256 arm:   "5edbb4166bc6b7c855be1cec17aa59e3bf2f3fdada948824bcef123fd75ecfdc",
         intel: "929721b8225392b6926cb35a2f4a44ca4e5a8a408101290d0d8e18ca32983b4f"

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
