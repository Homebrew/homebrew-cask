cask "icollections" do
  version "9.8.5"
  sha256 :no_check

  url "https://naarakstudio.com/download/iCollections.dmg",
      user_agent: :browser
  name "iCollections"
  desc "App to help keep the desktop organised"
  homepage "https://naarakstudio.com/icollections/"

  livecheck do
    url "https://naarakstudio.com/download/icollections/update.ver",
        user_agent: :browser
    strategy :page_match do |page|
      page.split(":").first[0..2].chars.join(".")
    end
  end

  depends_on :macos

  app "iCollections.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.naarak.collections.sfl*",
    "~/Library/Application Support/com.naarak.Collections",
    "~/Library/Preferences/com.naarak.Collections.plist",
  ]
end
