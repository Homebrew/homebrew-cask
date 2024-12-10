cask "shortwave" do
  arch arm: "arm64", intel: "x64"

  version "2024.12.05"
  sha256  arm:   "7304c9cff59a3e8fddb463f395019b7e985f9b023e0b9d0fc0249ad49c4809c0",
          intel: "6583846975ac3db4065b9dc47a593c51fb919ba25fede6d43eec03aefcd5a395"

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
