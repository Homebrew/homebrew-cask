cask "fastmail" do
  version "1.0.6"
  sha256 "6c654b2cd779b8ecb6aa8e6c61d1a2fcb6ffed59730d38e451d54dba7a7f93be"

  url "https://dl.fastmailcdn.com/desktop/production/mac/arm64/Fastmail-#{version}-arm64-mac.zip",
      verified: "dl.fastmailcdn.com/"
  name "Fastmail"
  desc "Email client"
  homepage "https://www.fastmail.com/"

  livecheck do
    url "https://dl.fastmailcdn.com/desktop/production/mac/arm64/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Fastmail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fastmail.mac.fastmail.sfl*",
    "~/Library/Application Support/Fastmail",
    "~/Library/Preferences/com.fastmail.mac.Fastmail.plist",
  ]
end
