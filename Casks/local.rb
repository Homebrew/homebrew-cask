cask "local" do
  version "5.9.6,5149"
  sha256 "19d53d856e4ae4be04fdd4f2139131492f1217f90ef436f2b2928c2688380197"

  url "https://cdn.localwp.com/releases-stable/#{version.before_comma}+#{version.after_comma}/local-#{version.before_comma}-mac.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cdn.localwp.com/stable/latest/mac"
  name "Local"
  desc "WordPress local development tool"
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
