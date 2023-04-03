cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.3.3"
  sha256 arm:   "e73ca93d4d029f0596636c08a726e00cd5c69ddb7f652c171dcac67f71acafa5",
         intel: "73f17ff70fd4fca4816a96abe7df6b1922c76ff33d28b9ff4a084d3ea0ecd8f2"

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
