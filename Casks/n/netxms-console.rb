cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.0"
  sha256 arm:   "b26c4d9f88b4ca1e25b048dcf7a990397a343175ef92c11c41ebf8a52317011b",
         intel: "2d79d16373f21a4988224245735b79ddf8018119aa29ff2ac7a5086424e543f9"

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
