cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.4.3"
  sha256 arm:   "38a3a158b180395aba4989fcb7d468149cb1399c8a854ddc9bf4e83bcb6670c3",
         intel: "7e4ffe836e9508e67093f807a015c8a497c6678aba3302d3f546acecec41ac64"

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
