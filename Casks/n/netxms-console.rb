cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.5.3"
  sha256 arm:   "968d57e9eb58f4818b50d41187d319af965fdb2ac42d0769cbbc77fe81264e9d",
         intel: "f9d20e9eea46db145ec8be6cb745790d81c64fa7980ca0be3a71e0e415142f6c"

  url "https://netxms.org/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.org/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
