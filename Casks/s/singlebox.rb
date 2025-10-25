cask "singlebox" do
  version "61.8.0"
  sha256 "33245f79b74eb290a859422735c475f26c931fde872f49776cc7e9377cec6295"

  url "https://cdn-2.webcatalog.io/singlebox2/Singlebox-#{version}-universal.dmg",
      verified: "cdn-2.webcatalog.io/singlebox2/"
  name "Singlebox"
  desc "Multi-account web browser"
  homepage "https://singlebox.app/en/"

  livecheck do
    url "https://cdn-2.webcatalog.io/singlebox2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Singlebox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.singlebox2.sfl*",
    "~/Library/Application Support/Singlebox",
    "~/Library/Application Support/Singlebox2",
    "~/Library/Preferences/com.webcatalog.singlebox2.plist",
    "~/Library/Saved Application State/com.webcatalog.singlebox2.savedState",
  ]
end
