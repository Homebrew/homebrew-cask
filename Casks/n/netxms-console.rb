cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.0.8"
  sha256 arm:   "9863cbf87cc32dbe8f0b937e7cdf30133fff7c1ec8ac5a3bcf24e20012143e74",
         intel: "9f9c5fb6ae5a13442159addbf11ee55106d561dc64497349ce7dc9e12d47c8d8"

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
