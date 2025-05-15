cask "notion-mail" do
  arch arm: "arm64", intel: "universal"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "0.0.34"
  sha256 arm:   "388283e30c9a83eb9890d9832dccbb51c8fc1a6ac3159f242339b4b7530a1c47",
         intel: "f5d309828a35b25e0b3e869b5bea4935167573b094f67a952a3f5f7d3549a5ee"

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
