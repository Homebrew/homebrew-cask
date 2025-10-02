cask "mailsteward" do
  version "18.1.1"
  sha256 "c47cc20de85d9ed9486ce9aec2d989e3a8bd0dc56b3ec4a51b0ece94141dc819"

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

  app "MailSteward.app"

  zap trash: [
    "~/Library/Preferences/com.pubblog.MailSteward.plist",
    "~/Library/Saved Application State/com.pubblog.MailSteward.savedState",
  ]
end
