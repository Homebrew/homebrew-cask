cask "netxms-console" do
  version "3.8.366"
  sha256 "4e42b572f38b02732b44b7384b4271c27a3365aa4b8b3b2e3be35ef4c6ee3d2a"

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
