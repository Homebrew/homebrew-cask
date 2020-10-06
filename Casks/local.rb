cask "local" do
  version "5.8.1,4931"
  sha256 "15c53088e530d8c43a0442f1f62df19952808e841b71fde5158d7ca11ebc40c6"

  url "https://cdn.localwp.com/releases-stable/#{version.before_comma}+#{version.after_comma}/local-#{version.before_comma}-mac.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cdn.localwp.com/stable/latest/mac"
  name "Local"
  homepage "https://localwp.com/"

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local by Flywheel",
    "~/Library/Logs/local-by-flywheel.log",
    "~/Library/Preferences/com.getflywheel.local.plist",
    "~/Library/Preferences/com.getflywheel.local.helper.plist",
    "~/Library/Saved Application State/com.getflywheel.local.savedState",
  ]
end
