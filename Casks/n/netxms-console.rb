cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.1"
  sha256 arm:   "8868589e0d3947524ec812bd2e449c71cd6325dc29a96edfb94b5259a4572020",
         intel: "2637d1e599f6b99c19d2af8067298bca6d5300fffb33ca8b79b892222a36b3a0"

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
