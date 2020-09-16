cask "gitfox" do
  version :latest
  sha256 :no_check

  # storage.googleapis.com/gitfox/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/gitfox/Gitfox.latest.stable.zip"
  name "Gitfox"
  desc "Git client"
  homepage "https://www.gitfox.app/"

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
