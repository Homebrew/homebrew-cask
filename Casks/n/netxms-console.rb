cask "netxms-console" do
  version "6.2.3"
  sha256 "629d243376146cdc9dbf414201833b1adc399cd3ae6b4a3f56d672aa6aa0dc85"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "NetXMS #{version.major_minor}.app"

  zap trash: "~/.nxmc"
end
