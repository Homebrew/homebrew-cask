cask "fastmail" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-#{arch}"

  version "1.0.7"
  sha256 arm:   "4d039e5e02b182d0c5eec3654783708e66b8844d6f63c65924cb08c974a01a44",
         intel: "ccbb2327b865c4adac12daccb031e6f79bc18f72a4b47a9d9e9fb91dde3917b2"

  url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/Fastmail-#{version}#{arch_suffix}-mac.zip",
      verified: "dl.fastmailcdn.com/"
  name "Fastmail"
  desc "Email client"
  homepage "https://www.fastmail.com/"

  livecheck do
    url "https://dl.fastmailcdn.com/desktop/production/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Fastmail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fastmail.mac.fastmail.sfl*",
    "~/Library/Application Support/Fastmail",
    "~/Library/Preferences/com.fastmail.mac.Fastmail.plist",
  ]
end
