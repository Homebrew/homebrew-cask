cask "switchbar" do
  version "34.5.0"
  sha256 "faf2f25832afcd5e9937376424f38a930d22713510e73374177fb154a67acab1"

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
