cask "gitfox" do
  version "3.9.1,9523"
  sha256 "1c050e9d622bd20c209cb7820fa82fe98cf23f7580dc2c662f29e79833aad4da"

  url "https://storage.googleapis.com/gitfox/builds/retail/#{version.csv.second}/Gitfox.#{version.csv.second}.zip",
      verified: "storage.googleapis.com/gitfox/"
  name "Gitfox"
  desc "Git client"
  homepage "https://www.gitfox.app/"

  livecheck do
    url "https://storage.googleapis.com/gitfox/Gitfox.latest.stable.zip"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Gitfox.app"
  binary "#{appdir}/Gitfox.app/Contents/SharedSupport/bin/gitfox-cli", target: "gitfox"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bytieful.gitfox-retail.sfl*",
    "~/Library/Application Support/com.bytieful.Gitfox",
    "~/Library/Application Support/com.bytieful.Gitfox-retail",
    "~/Library/Application Support/Gitfox",
    "~/Library/Caches/com.bytieful.Gitfox",
    "~/Library/Caches/com.bytieful.Gitfox-retail",
    "~/Library/Caches/com.crashlytics.data/com.bytieful.Gitfox",
    "~/Library/HTTPStorages/com.bytieful.Gitfox-retail",
    "~/Library/Preferences/com.bytieful.Gitfox-retail.plist",
    "~/Library/Preferences/com.bytieful.Gitfox.*",
    "~/Library/Saved Application State/com.bytieful.Gitfox-retail.savedState",
    "~/Library/WebKit/com.bytieful.Gitfox",
    "~/Library/WebKit/com.bytieful.Gitfox-retail",
  ]
end
