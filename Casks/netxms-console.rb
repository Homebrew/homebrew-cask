cask "netxms-console" do
  version "3.9.176"
  sha256 "fa4b0503b19d1910facef2596eda3e8e7504d0d7f625ab77e3072600738c7f80"

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
