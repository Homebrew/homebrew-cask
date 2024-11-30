cask "shortwave" do
  arch arm: "arm64", intel: "x64"

  version "2024.11.04"
  sha256  arm:   "c066a99dbb4e70d249b377e97c44d14173886da4ab38d8c1b9b578a4dad0dc09",
          intel: "5234828998f819c85474debf8d50a801da26a2d9112b95586c74d074608e4a0b"

  url "https://storage.googleapis.com/shortwave-downloads/desktop_app/darwin/#{arch}/Shortwave-darwin-#{arch}-#{version}.zip",
      verified: "storage.googleapis.com/shortwave-downloads/"
  name "Shortwave"
  desc "Email client"
  homepage "https://www.shortwave.com/"

  livecheck do
    url "https://storage.googleapis.com/shortwave-downloads/desktop_app/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Shortwave.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.shortwave.sfl*",
    "~/Library/Application Support/Shortwave",
    "~/Library/Caches/com.electron.shortwave",
    "~/Library/Caches/com.electron.shortwave.ShipIt",
    "~/Library/HTTPStorages/com.electron.shortwave",
    "~/Library/Logs/Shortwave",
    "~/Library/Preferences/com.electron.shortwave.plist",
    "~/Library/Saved Application State/com.electron.shortwave.savedState",
  ]
end
