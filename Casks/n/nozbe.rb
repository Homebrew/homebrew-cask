cask "nozbe" do
  version "2026.19"
  sha256 "354259eea18661fdf9c8c5b6998f17cc4925a4b939e668a66df1fbd54ff9621a"

  url "https://builds.nozbe.com/mac/#{version}/Nozbe.app.zip"
  name "Nozbe"
  desc "Project management app"
  homepage "https://nozbe.com/"

  livecheck do
    url "https://builds.nozbe.com/updates.mac.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on :macos

  app "Nozbe.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nozbe4mac.sfl*",
    "~/Library/Application Support/Nozbe4",
    "~/Library/Caches/com.nozbe4mac",
    "~/Library/Caches/com.nozbe4mac.ShipIt",
    "~/Library/HTTPStorages/com.nozbe4mac",
    "~/Library/Preferences/com.nozbe4mac.plist",
    "~/Library/Saved Application State/com.nozbe4mac.savedState",
  ]
end
