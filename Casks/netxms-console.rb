cask "netxms-console" do
  version "3.8.120"
  sha256 "dddfbd06272a8b525fed7d540e4f5eb980b1f855e426f130fda0e7f846858a8d"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}.dmg"
  appcast "https://netxms.org/download/releases/#{version.major_minor}/"
  name "NetXMS Management Console"
  homepage "https://netxms.org/"

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
