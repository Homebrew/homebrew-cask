cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.0.5"
  sha256 arm:   "487f37c47d5922f4b52a91ef59d2c39619331faf7c2f8e2f6e7d8724f596ab08",
         intel: "75ddcbde1edbacf108423f7f1b282bd6015fe5ed9330083d6aa840147e9d11a4"

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
