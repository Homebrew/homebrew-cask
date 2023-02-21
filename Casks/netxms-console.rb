cask "netxms-console" do
  arch arm: "-aarch64", intel: ""

  version "4.3.1"
  sha256 arm:   "7ba749db7a79ed891a21a5cd41393e8887e49c5ee29a993e815a1492d31401a5",
         intel: "269073839eefd6b3c048fd52b3ab985323019ce16e04b057ffa494b92bff477a"

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
