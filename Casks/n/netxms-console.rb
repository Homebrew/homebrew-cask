cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.4.2"
  sha256 arm:   "5028a0788e67f8fd9bead08aa1302162c703e777d6582c7b90c14cc9c01a2a9a",
         intel: "d99f8fc295ce1a4acd0b0a62be1114bc7018a6f267ab1438deefb5bd1de7a97f"

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
