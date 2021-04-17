cask "netxms-console" do
  version "3.8.262"
  sha256 "3f3d11266c76829702b5585f91c3f7127e59133b5c0415c4af155a06497b6d62"

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
