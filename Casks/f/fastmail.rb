cask "fastmail" do
  version "1.0.3"
  sha256 "2b4eebdb467a70c38d5506734daebaae2986610e4f7b7f2de39e4da875f98231"

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
