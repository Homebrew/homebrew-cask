cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.6"
  sha256 arm:   "bb8137ea261f50848f7a0be15bf85e63e56a98a4369ab53ac510d4e1e75230ba",
         intel: "a5fa9e1ad510f058fb5fc278d6141ff3b423da1d77405a8580796915f8e4afc4"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
