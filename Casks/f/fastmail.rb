cask "fastmail" do
  arch arm: "arm64", intel: "x64"
  arch_suffix = on_arch_conditional arm: "-#{arch}"

  version "1.0.9"
  sha256 arm:   "749519267d14b4d16ba177bd8aa6fcf654a4eb8e246dfa158498672188d663fe",
         intel: "e682e8013740e0e50e26759b680a291431340419043cb7a24d626c0477b6a5ff"

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
