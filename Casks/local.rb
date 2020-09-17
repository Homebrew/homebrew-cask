cask "local" do
  version "5.7.4,4876"
  sha256 "8ca0e67f1e653c2ae0991060067bb0d60303a0be6d89ba889ecde36382162a05"

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
