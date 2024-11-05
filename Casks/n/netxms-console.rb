cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.1.0"
  sha256 arm:   "609f0d71eaf2071b5f773cb0d5ff1a69c58838b123340b9acf5e69512c13e9e5",
         intel: "256efd565952aece04decd026f6510dcf797c81d542ae127a749c9961dc35a24"

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
