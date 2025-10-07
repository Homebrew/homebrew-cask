cask "notion-mail" do
  arch arm: "arm64", intel: "universal"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "0.0.40"
  sha256 arm:   "07b98106dd76a4bdb68995c4d6a0519bd3afe078845971626872a19a8d03cbf5",
         intel: "f64055ed2bb0a4b71ed995b6e762b9c22c8f679bbb659548c704c5b298b702a3"

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

  app "Notion Mail.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/notion.mail.id.sfl*",
    "~/Library/Application Support/Notion Mail",
    "~/Library/Logs/Notion Mail",
    "~/Library/Preferences/notion.mail.id.*",
    "~/Library/Saved Application State/notion.mail.id.savedState",
  ]
end
