cask "meridiem" do
  version "0.2.8"
  sha256 "90da08997866abe4a02ac4eb999bbfc80a7e33ae3b21c54f29741d07f7ad05c0"

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

  depends_on macos: ">= :big_sur"
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
