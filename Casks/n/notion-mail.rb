cask "notion-mail" do
  version :latest
  sha256 :no_check

  url "https://s3.us-west-2.amazonaws.com/mail-desktop-release.notion-static.com/Notion%2BMail-latest-mac-universal.dmg",
      verified: "s3.us-west-2.amazonaws.com/mail-desktop-release.notion-static.com/"
  name "Notion Mail"
  desc "Email client integrated with Notion workspace"
  homepage "https://notion.so/mail"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :catalina"

  app "Notion Mail.app"

  zap trash: [
    "~/Library/Application Support/Notion Mail",
    "~/Library/Logs/Notion Mail",
    "~/Library/Preferences/notion.mail.id.*",
    "~/Library/Saved Application State/notion.mail.id.savedState",
  ]
end
