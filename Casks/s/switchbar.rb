cask "switchbar" do
  version "34.1.0"
  sha256 "1448095a17a3f77de69162503ac1f55d53825c8db171ce89209a958ada3d154f"

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
