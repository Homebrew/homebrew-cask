cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.4.0"
  sha256 arm:   "38f5624ed9e8aa8b46548b9839773f58f5356fc41147f3bcb19f0b9b836c4c07",
         intel: "2dfc3afb9b7bdfd1ae82b1fb8d11bc14b52b54967481b27eab8635e8460fe430"

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
