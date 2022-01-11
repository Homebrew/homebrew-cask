cask "gitfox" do
  version "2.3.1,6619"
  sha256 "6d64b839f501ae9ca1bb9334ee2ea212ca26dffb2030dba5c0f1ec04ca51c1eb"

  url "https://storage.googleapis.com/gitfox/builds/retail/#{version.after_comma}/Gitfox.#{version.after_comma}.zip",
      verified: "storage.googleapis.com/gitfox/"
  name "Gitfox"
  desc "Git client"
  homepage "https://www.gitfox.app/"

  livecheck do
    url "https://storage.googleapis.com/gitfox/Gitfox.latest.stable.zip"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Gitfox.app"
  binary "#{appdir}/Gitfox.app/Contents/SharedSupport/bin/gitfox-cli", target: "gitfox"

  zap trash: [
    "~/Library/Application Support/com.bytieful.Gitfox",
    "~/Library/Application Support/Gitfox",
    "~/Library/Caches/com.bytieful.Gitfox",
    "~/Library/Caches/com.crashlytics.data/com.bytieful.Gitfox",
    "~/Library/Preferences/com.bytieful.Gitfox.*",
    "~/Library/WebKit/com.bytieful.Gitfox",
  ]
end
