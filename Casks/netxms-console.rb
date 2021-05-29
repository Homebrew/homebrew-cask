cask "netxms-console" do
  version "3.8.382"
  sha256 "b0aed45b3353eb252b5545b5fa35410526ffc9b91a6a676883f33ed4f8fa7dbe"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.org/download"
    strategy :page_match
    regex(%r{href=.*?/nxmc-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
