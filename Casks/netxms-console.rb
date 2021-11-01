cask "netxms-console" do
  version "3.9.280"
  sha256 "fb102137f5c58eed520b99c40af747bfcf6bab6c2c2b23e47c1c5799d8ff4138"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.org/download"
    regex(%r{href=.*?/nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
