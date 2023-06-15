cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.3.7"
  sha256 arm:   "658d70cc8b662fea1c2a10bcc3e60920a5ddbe10b5dcd2a1a314fa19b7842d27",
         intel: "1d7752f07b501bbc2e13324dfcbd06e124434adf7ee5d593f1deee1311c9db17"

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
