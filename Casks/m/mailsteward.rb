cask "mailsteward" do
  version "18.1"
  sha256 "fa3acae2239c906a9de94c519e9517c3aa06b42091072e144b864ebdbcd9937d"

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
