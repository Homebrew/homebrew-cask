cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.2.3"
  sha256 arm:   "9c5870a00b0b49e3d00184c06e65525592c5ebf3af008c11678d7992cf430a4b",
         intel: "e7a8cf7f808f90c4fcf1fee61d5822abd65f51ab8215e1f6fcc3f329e007aa9c"

  url "https://netxms.com/download/releases/#{version.major_minor}/nxmc-#{version}#{arch}.dmg"
  name "NetXMS Management Console"
  desc "Network and infrastructure monitoring and management system"
  homepage "https://netxms.com/"

  livecheck do
    url "https://netxms.com/downloads/"
    regex(/href=.*?nxmc[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "NetXMS Console (#{version}).app"

  zap trash: "~/.nxmc"
end
