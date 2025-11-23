cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.7"
  sha256 arm:   "585483d0062ae045500c6fd39a3246950b5d28a8f31edeccf34b7897d6893ed9",
         intel: "f28671b31aab1bf701acd49392067088e27e3bb08c9de27c0a2a844ed99ba001"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
