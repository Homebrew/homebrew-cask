cask "netxms-console" do
  arch arm: "-aarch64", intel: ""

  version "4.2.461"
  sha256 arm:   "505d9220ae6cd89a8d4ed31357006b3448616a1345d4b2142fbd4dd8af7140da",
         intel: "25f82ecf39de43ed2db0b92a5abd0badb7304bc03e6d8244140b2eaf46eeabe1"

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
