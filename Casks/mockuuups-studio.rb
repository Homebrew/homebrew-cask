cask "mockuuups-studio" do
  version "2.5.1"
  sha256 "b4af73b7d99f5c520180fd84aa4a3aae3bd7a4815bf1b553a6ad6bf6f72096ac"

  # mockuuups.com/ was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}-mac.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://mockuuups.studio/download/mac/"
  name "Mockuuups Studio"
  homepage "https://mockuuups.studio/"

  app "Mockuuups Studio.app"

  zap trash: [
    "~/Library/Application Support/Mockuuups Studio",
    "~/Library/Caches/com.mockuuups.studio-app",
    "~/Library/Caches/com.mockuuups.studio-app.ShipIt",
    "~/Library/Cookies/com.mockuuups.studio-app.binarycookies",
    "~/Library/Preferences/com.mockuuups.studio-app.helper.plist",
    "~/Library/Preferences/com.mockuuups.studio-app.plist",
    "~/Library/Saved Application State/com.mockuuups.studio-app.savedState",
  ]
end
