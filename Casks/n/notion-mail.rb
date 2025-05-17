cask "notion-mail" do
  arch arm: "arm64", intel: "universal"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "0.0.35"
  sha256 arm:   "e9b7715b1897637a0338654480e93b7c288807616f90727cde520b7d1a880127",
         intel: "417ee372c04ea0e6c9ffd1f9c38b1ac12f9d000b4679a6744e3cf3931ba0b9b4"

  url "https://mail-desktop-release.notion-static.com/Notion%20Mail-#{version}-#{arch}.zip",
      verified: "mail-desktop-release.notion-static.com/"
  name "Notion Mail"
  desc "Email client integrated with Notion workspace"
  homepage "https://www.notion.com/product/mail"

  livecheck do
    url "https://mail-desktop-release.notion-static.com/notion-mail-#{livecheck_arch}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Notion Mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/notion.mail.id.sfl*",
    "~/Library/Application Support/Notion Mail",
    "~/Library/Logs/Notion Mail",
    "~/Library/Preferences/notion.mail.id.*",
    "~/Library/Saved Application State/notion.mail.id.savedState",
  ]
end
