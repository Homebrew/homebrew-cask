cask "gitfox" do
  version "1.4910"
  sha256 :no_check

  url "https://storage.googleapis.com/gitfox/Gitfox.latest.stable.zip",
      verified: "storage.googleapis.com/gitfox/"
  name "Gitfox"
  desc "Git client"
  homepage "https://www.gitfox.app/"

  auto_updates true

  app "Gitfox.app"

  zap trash: [
    "~/Library/Application Support/com.bytieful.Gitfox",
    "~/Library/Application Support/Gitfox",
    "~/Library/Caches/com.bytieful.Gitfox",
    "~/Library/Caches/com.crashlytics.data/com.bytieful.Gitfox",
    "~/Library/Preferences/com.bytieful.Gitfox.*",
    "~/Library/WebKit/com.bytieful.Gitfox",
  ]
end
