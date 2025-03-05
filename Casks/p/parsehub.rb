cask "parsehub" do
  version "2.4.42"
  sha256 "f445b4cd4b97999913d540b609e19ea4802bc40b88745951f7a0a8eb3a603d1d"

  url "https://parsehub.com/static/client/ParseHub-#{version}-mac.zip"
  name "ParseHub"
  desc "Web scraping tool"
  homepage "https://www.parsehub.com/"

  livecheck do
    url "https://parsehub.com/static/client/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "ParseHub.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.parsehub.client.sfl*",
    "~/Library/Application Support/ParseHub",
    "~/Library/Preferences/com.parsehub.client.plist",
    "~/Library/Saved Application State/com.parsehub.client.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
