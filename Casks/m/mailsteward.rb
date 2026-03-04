cask "mailsteward" do
  version "18.2.1"
  sha256 "0d5cc8fdfa1e6a88ee39599faa59081538ca49123ec8d75c258ff226b729231c"

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
