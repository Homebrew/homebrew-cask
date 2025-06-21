cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.2.1"
  sha256 arm:   "bd478d738ec2eb7928651c0bc72d11175bfae6c5c525aaf90afb63f087b33846",
         intel: "3e78e2ca2b68101f7e12dddbc8ac3d502963c0b5608f0d798709a504dd3b51a2"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
