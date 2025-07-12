cask "notion-mail" do
  arch arm: "arm64", intel: "universal"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "0.0.37"
  sha256 arm:   "d66fc303791f6ac1940c840dab1cc4b88d76c7780687773461667fb011dc4700",
         intel: "1fd33cce20aa87c4ffec151eee9a1fc6e2edbcb2d8768449d3777fa87212835a"

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
