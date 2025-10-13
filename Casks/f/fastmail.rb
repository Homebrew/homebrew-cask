cask "fastmail" do
  version "1.0.0"
  sha256 "04a05d07998e8a2138d595e354ec4e60b981e0cf3abab42209df0d47c165dbbd"

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
