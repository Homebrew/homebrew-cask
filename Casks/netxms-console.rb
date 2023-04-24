cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.3.5"
  sha256 arm:   "7f45be9f25721f8bcd8a39c5d80bc55bebeb6ea7d920134fb8805bd78e761cc1",
         intel: "1e48834507fa760e7f4359abb87affb8d7717d8e56430b2692d7ffe3a76429e1"

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
