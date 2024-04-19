cask "parsehub" do
  version "2.4.31"
  sha256 "b7ee3f83017fac344336f21a79e7d6e3aeac7380d70c4308e6ce0633c86c2af6"

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
