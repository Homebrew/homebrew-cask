cask "switchbar" do
  version "34.2.1"
  sha256 "577dfb11ad21cde4a9cb288275eaa8b235ee109dc38c8849b4e11ae536f4719e"

  url "https://cdn-2.webcatalog.io/switchbar/Switchbar-#{version}-universal.dmg"
  name "Switchbar"
  desc "Browser and email client picker"
  homepage "https://switchbar.com/en"

  livecheck do
    url "https://cdn-2.webcatalog.io/switchbar/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Switchbar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.switchbar.sfl*",
    "~/Library/Application Support/Switchbar",
    "~/Library/Preferences/com.webcatalog.switchbar.plist",
  ]
end
