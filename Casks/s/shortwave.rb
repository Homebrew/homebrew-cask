cask "shortwave" do
  arch arm: "arm64", intel: "x64"

  version "2024.12.04"
  sha256  arm:   "91ec34460443ecb0745b38105d9f98a7492ad026d29019f6a45ad7b0c6feb08c",
          intel: "5090d7c8b4a3d342861c21fbc3161ac4ca75e2a2d70d97a66fbf8198ca8f1a7d"

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
