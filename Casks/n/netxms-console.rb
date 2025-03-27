cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.1.5"
  sha256 arm:   "881102ac787729d7499a2d7c8919b38e88b83c2f88f96e9b98bf2ab7e92c659d",
         intel: "6cff92a8c8abdd27f495000f636526ac1bae33858441e4c72861487243c9d384"

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
