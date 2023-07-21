cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.4.1"
  sha256 arm:   "c4f34e0c1f692340ee402313f6c7c5d9cf00ba5aa1184e7a8ab95e1e3ba87422",
         intel: "c39b23b01fcee98daa184847c15f7a223a9b194c47eed09bcca7caa431f9d06a"

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
