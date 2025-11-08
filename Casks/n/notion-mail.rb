cask "notion-mail" do
  arch arm: "arm64", intel: "universal"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "0.0.42"
  sha256 arm:   "c46daed32c22fdf5b54892c8e5c0cb5cc2a00a6a60d0efdcda775207a591710c",
         intel: "3fcfd00030c0f65b5a61e8408bda1a007abece3874f118ad3a12e3877746c5b1"

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
  depends_on macos: ">= :monterey"

  app "Notion Mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/notion.mail.id.sfl*",
    "~/Library/Application Support/Notion Mail",
    "~/Library/Logs/Notion Mail",
    "~/Library/Preferences/notion.mail.id.*",
    "~/Library/Saved Application State/notion.mail.id.savedState",
  ]
end
