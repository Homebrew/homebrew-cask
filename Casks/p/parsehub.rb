cask "parsehub" do
  version "2.4.33"
  sha256 "8303773747139309df3546dfeca6cf7ec6913fe42dbe2a7206c5ca5e9994e6b1"

  url "https://parsehub.com/static/client/ParseHub-#{version}-mac.zip"
  name "ParseHub"
  desc "Web scraping tool"
  homepage "https://www.parsehub.com/"

  livecheck do
    url "https://parsehub.com/static/client/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "ParseHub.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.parsehub.client.sfl*",
    "~/Library/Application Support/ParseHub",
    "~/Library/Preferences/com.parsehub.client.plist",
    "~/Library/Saved Application State/com.parsehub.client.savedState",
  ]
end
