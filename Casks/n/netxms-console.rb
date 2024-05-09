cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.0.2"
  sha256 arm:   "a93f91da3abd3094d53b847a55d084d7adb41bc9626366b1ccd8c17422d90a5d",
         intel: "25fd5b3cde8778d8639aa088e397d6cc21733cb6667ceb9a84abadbc3cc598a6"

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
