cask "mailsteward" do
  version "18.2.2"
  sha256 "271366882033d7418a1307f977804457845c27c9a760dde1024fd2a54678c9b1"

  url "https://s3.amazonaws.com/mailsteward/images/MailSteward_#{version}.zip"
  name "MailSteward"
  desc "Email management tool for Apple Mail and Postbox"
  homepage "https://mailsteward.com/"

  livecheck do
    url "https://mailsteward.com/upgrade.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "MailSteward.app"

  uninstall quit: "com.pubblog.MailSteward"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/MailSteward Help*",
    "~/Library/Preferences/com.pubblog.MailSteward.plist",
    "~/Library/Saved Application State/com.pubblog.MailSteward.savedState",
  ]
end
