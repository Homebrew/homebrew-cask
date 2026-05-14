cask "arc" do
  version "1.147.0,80797"
  sha256 "6cdfcd2987dc51a91a9cf0bb4edcb6b6435f40d84e33aeb0190189f68378726c"

  url "https://releases.arc.net/release/Arc-#{version.csv.first}-#{version.csv.second}.zip"
  name "Arc"
  desc "Chromium based browser"
  homepage "https://arc.net/"

  livecheck do
    url "https://releases.arc.net/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Arc.app"

  uninstall quit: "company.thebrowser.Browser"

  zap trash: [
    "~/Library/Application Support/Arc",
    "~/Library/Caches/Arc",
    "~/Library/Caches/CloudKit/company.thebrowser.Browser",
    "~/Library/Caches/company.thebrowser.Browser",
    "~/Library/HTTPStorages/company.thebrowser.Browser",
    "~/Library/HTTPStorages/company.thebrowser.Browser.binarycookies",
    "~/Library/Preferences/company.thebrowser.Browser.plist",
    "~/Library/Saved Application State/company.thebrowser.Browser.savedState",
    "~/Library/WebKit/company.thebrowser.Browser",
  ]
end
