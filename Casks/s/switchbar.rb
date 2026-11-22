cask "switchbar" do
  version "34.4.1"
  sha256 "0032b960f7b48068d1eda8ec74b18680b65d0f875ec8be138290d807f8f7fd65"

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
