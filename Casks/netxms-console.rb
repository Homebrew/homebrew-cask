cask "netxms-console" do
  arch arm: "-aarch64", intel: ""

  version "4.2.433"
  sha256 arm:   "14d66f2e0b5aa76090e388fabb79add6d9ac02c47e3480006e47ee3ea5a48931",
         intel: "a89536aa59cc94cb4a136931ab1feb84b3701847c6a6b00f7d23480e47e967c7"

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
