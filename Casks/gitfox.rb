cask "gitfox" do
  version "2.1.0,6488"
  sha256 "e259834edbd4fe749bca1780edefcb19459e99514dabac56f9dc0d4b6d05b234"

  url "https://storage.googleapis.com/gitfox/builds/retail/#{version.after_comma}/Gitfox.#{version.after_comma}.zip",
      verified: "storage.googleapis.com/gitfox/"
  name "Gitfox"
  desc "Git client"
  homepage "https://www.gitfox.app/"

  livecheck do
    url :url
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
