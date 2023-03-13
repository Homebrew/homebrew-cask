cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.3.2"
  sha256 arm:   "49b0fe4df758b197e9ecc2275a583ab37c3b43fe50e38ed43ee133604d0ea5e7",
         intel: "4d25b0cf6506be0924967bf83f491879707ee0771c6409b1942b2fa54aa49b82"

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
