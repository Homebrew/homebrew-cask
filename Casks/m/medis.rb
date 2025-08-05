cask "medis" do
  version "2.16.1"
  sha256 "f9cef8fb4637d9a0f5a101246a20830c081452f49dfc7006b992bb6b4c561943"

  url "https://api.getmedis.com/medis/medis-#{version}.zip"
  name "Medis"
  desc "Modern GUI for Redis"
  homepage "https://getmedis.com/"

  livecheck do
    url "https://api.getmedis.com/medis/sparkle"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Medis.app"

  zap trash: [
    "~/Library/Application Support/li.zihua.medis*",
    "~/Library/Caches/li.zihua.medis*",
    "~/Library/HTTPStorages/li.zihua.medis*",
    "~/Library/Preferences/li.zihua.medis*.plist",
  ]
end
