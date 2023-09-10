cask "medis" do
  version "2.13.0"
  sha256 "35d570f72cdf055a781f5ee1f8482c037412034914e98f561f7a9fe71679f70a"

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
