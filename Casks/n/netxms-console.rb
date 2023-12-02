cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.4.4"
  sha256 arm:   "5cf5b68c20f8027caf18524b511bab6502b302d3f5f0229bdf2344116cc17b6b",
         intel: "57ccb247962041c07a8f3e24a136f42e0c75f09c40c71362ac8152cb50f57fac"

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
