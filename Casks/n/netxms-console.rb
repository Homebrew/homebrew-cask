cask "netxms-console" do
  arch arm: "-aarch64"

  version "4.4.5"
  sha256 arm:   "6ed9fb6edb193c32bd9752f846437e91ea6af6ee475b576721d2368af1f3cb7e",
         intel: "7a1c2fa92e0f4fdf9ee94464ffbbbd5748275a95e2230468b3f512fbf611e784"

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
