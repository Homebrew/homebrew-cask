cask "meridiem" do
  version "1.0.0"
  sha256 "9baf1608a5edc5ccd8155d7e7d5e426c00c62a6f09487b31bcffc54282ab6ffd"

  url "https://storage.googleapis.com/markwhen_binaries/Meridiem/darwin/arm64/Meridiem-darwin-arm64-#{version}.zip",
      verified: "storage.googleapis.com/markwhen_binaries/"
  name "Meridiem"
  desc "Markdown editor"
  homepage "https://meridiem.markwhen.com/"

  livecheck do
    url "https://storage.googleapis.com/markwhen_binaries/Meridiem/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "Meridiem.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.meridiem.sfl*",
    "~/Library/Application Support/Meridiem",
    "~/Library/Caches/com.electron.meridiem",
    "~/Library/Caches/com.electron.meridiem.ShipIt",
    "~/Library/HTTPStorages/com.electron.meridiem",
    "~/Library/Logs/Meridiem",
    "~/Library/Preferences/com.electron.meridiem.plist",
    "~/Library/Saved Application State/com.electron.meridiem.savedState",
  ]
end
