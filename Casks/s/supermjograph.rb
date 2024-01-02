cask "supermjograph" do
  version "0.17.2"
  sha256 "1440fb7554cbd93ce55f219187be40bcc5e014b347378e6b7dd507c7e2a8d606"

  url "https://downloads.sourceforge.net/mjograph/SuperMjograph/SuperMjograph-#{version}.zip",
      verified: "downloads.sourceforge.net/mjograph/SuperMjograph/"
  name "SuperMjograph"
  desc "Generate scientific graphs from data"
  homepage "https://www.mjograph.net/"

  livecheck do
    url "https://sourceforge.net/projects/mjograph/rss?path=/SuperMjograph"
    regex(%r{url=.*?/SuperMjograph[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "SuperMjograph.app"

  zap trash: [
    "~/Library/Caches/com.mjo.SuperMjograph",
    "~/Library/Preferences/com.mjo.SuperMjograph.plist",
  ]
end
