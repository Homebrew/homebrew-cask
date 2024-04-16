cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.5.6"
  sha256 arm:   "9c1892cecc23a4107172ceedaf9e249caa2adbaed683f3d6dc5fac20dd6f9e43",
         intel: "8402b301a05b4c34a0f7193c20349b6b348fb2cb5a6344b2e33d057bd3eed2c5"

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
