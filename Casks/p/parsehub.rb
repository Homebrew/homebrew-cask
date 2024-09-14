cask "parsehub" do
  version "2.4.36"
  sha256 "b3ed41917ba231a6388e5571710aa6d8d89945c95a25ef6cedea168b590363d6"

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

  caveats do
    requires_rosetta
  end
end
