cask "netxms-console" do
  arch arm: "-aarch64"

  version "5.0.6"
  sha256 arm:   "9322a09c377b3fe515dcc00026bc64a30a984c8ababd491dff439eda1415ca47",
         intel: "d846e5a2616e8ca3baa1407d5f87df266d8d645bdac73781fcabf74ed3481e08"

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
