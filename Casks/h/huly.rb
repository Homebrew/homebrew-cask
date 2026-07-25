cask "huly" do
  arch arm: "arm64", intel: "x64"

  version "0.7.426"
  sha256 arm:   "1965a7f09dff166586f3675aded9a9b53e1733096beacbc87967ab3b4f82a926",
         intel: "24d31c6491364963e3f3bf086878a7012d7a2b2cbc6e15401e4c0712a24bb7e4"

  url "https://dist.huly.io/Huly-macos-#{version}-#{arch}.zip"
  name "Huly"
  desc "All-in-One Project Management Platform"
  homepage "https://huly.io/"

  livecheck do
    url "https://dist.huly.io/huly-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Huly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/hc.hcengineering.huly.sfl*",
    "~/Library/Application Support/Huly Desktop",
    "~/Library/Logs/Huly Desktop",
    "~/Library/Preferences/hc.hcengineering.Huly.plist",
    "~/Library/Saved Application State/hc.hcengineering.Huly.savedState",
  ]
end
