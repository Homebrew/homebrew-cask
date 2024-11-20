cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.1.1"
  sha256 arm:   "8414ae29dd583ceaa9deeee1297cf562529d4c3587cb27455f042e55a6cd8376",
         intel: "b9605b27d6a33e14484a786ccf69c0e879aaabeda49aa49ae4637e74a3cfc41d"

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
