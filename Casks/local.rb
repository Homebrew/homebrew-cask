cask "local" do
  version "5.7.2,4801"
  sha256 "e9c5c96c1f54de3fba474c2b4ce1c9331a594c06d5535cce1c2ec1dc89b90172"

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
