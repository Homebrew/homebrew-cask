cask "medis" do
  version "2.9.4"
  sha256 "cf918ec6c713cfae83a64623f3256dd5a472599c413afd877478c47917ab27a5"

  url "https://api.getmedis.com/medis-#{version}.zip"
  name "Medis"
  desc "Modern GUI for Redis"
  homepage "https://getmedis.com/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/d33d1248-5582-4304-b45c-cb40d51da2ab"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "Medis.app"

  zap trash: [
    "~/Library/Application Support/li.zihua.medis*",
    "~/Library/Caches/li.zihua.medis*",
    "~/Library/HTTPStorages/li.zihua.medis*",
    "~/Library/Preferences/li.zihua.medis*.plist",
  ]
end
