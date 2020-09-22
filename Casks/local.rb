cask "local" do
  version "5.7.5,4909"
  sha256 "9ccdc16c8a261d3508fb70b437ef1ad3266de75ea053ed2bb3df7a695aee7a60"

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
