cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.3.6"
  sha256 arm:   "96614fc7e51d80b8b3769efcec1c0cd36d922fbdce57ba932bc49734dc9ed13d",
         intel: "0782bc9cee0670cb84e2913f80201715fe4b93cab41b74e97ccb9c69c52fa50a"

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
