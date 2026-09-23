cask "fastmail" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-#{arch}"

  version "1.8.0"
  sha256 arm:   "1bed6c5a1e4dfe84343425ec71eb81d38547f176b41109f9cf374d96309bf156",
         intel: "b5d8b31dd99917f9ed4e1ac5ee57a4e8ad6f425f173a5de1c9e0f51b1dcd1356"

  url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/Fastmail-#{version}#{arch_suffix}-mac.zip"
  name "Fastmail"
  desc "Email client"
  homepage "https://www.fastmail.com/"

  livecheck do
    url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Fastmail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fastmail.mac.fastmail.sfl*",
    "~/Library/Application Support/Fastmail",
    "~/Library/Preferences/com.fastmail.mac.Fastmail.plist",
  ]
end
