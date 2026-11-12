cask "asana" do
  arch arm: "arm64", intel: "x64"

  version "2.11.0"
  sha256 arm:   "de95274b91ee15ede19db97f8118b62a778dda43814f134b5a347dada3e4c739",
         intel: "f26c313e6b2537f30857aeef22b7872504c4ba7c8b7f5a12b89b53072f5c69cc"

  url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/v#{version}/Asana-darwin-#{arch}-#{version}.zip"
  name "Asana"
  desc "Manage team projects and tasks"
  homepage "https://asana.com/"

  livecheck do
    url "https://desktop-downloads.asana.com/darwin_#{arch}/prod/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.asana.sfl*",
    "~/Library/Caches/com.electron.asana",
    "~/Library/Caches/com.electron.asana.ShipIt",
    "~/Library/HTTPStorages/com.electron.asana",
    "~/Library/Logs/Asana",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState",
  ]
end
