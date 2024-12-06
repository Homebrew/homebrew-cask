cask "mailsteward" do
  version "17.1.3"
  sha256 "36fa58cbff5415426749c5b504a97eab46c65a2060a876b9349bc2fceea4c4b3"

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
  depends_on macos: ">= :catalina"

  app "MailSteward.app"

  zap trash: [
    "~/Library/Preferences/com.pubblog.MailSteward.plist",
    "~/Library/Saved Application State/com.pubblog.MailSteward.savedState",
  ]
end
