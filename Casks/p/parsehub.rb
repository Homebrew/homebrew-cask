cask "parsehub" do
  version "2.4.34"
  sha256 "2db3ac2fffe75fdedd6920d9ca3d2e659160e0f75d76a66c0f9842ac43e8cb42"

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
