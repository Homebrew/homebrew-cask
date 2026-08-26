cask "mailsteward" do
  version "18.2.2"
  sha256 "dd1695e20fb7aedec3c495d2f5869ebeb1b9b33a5de5fd261ca428dcfe330c05"

  url "https://s3.amazonaws.com/mailsteward/images/MailSteward_#{version}.zip",
      verified: "s3.amazonaws.com/mailsteward/"
  name "MailSteward"
  desc "Email management tool for Apple Mail and Postbox"
  homepage "https://mailsteward.com/"

  livecheck do
    url "https://mailsteward.com/upgrade.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "MailSteward.app"

  uninstall quit: ["com.apple.mail", "com.pubblog.MailSteward"]

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/MailSteward Help*",
    "~/Library/Preferences/com.pubblog.MailSteward.plist",
    "~/Library/Saved Application State/com.pubblog.MailSteward.savedState",
  ]
end
