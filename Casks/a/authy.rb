cask "authy" do
  version "2.4.1"
  sha256 "f52808dfa09c23dbf4b3300e187b5675f9ad6e304d749226bcc10a3887d9ba4d"

  url "https://pkg.authy.com/authy/stable/#{version}/darwin/x64/Authy%20Desktop-#{version}.dmg"
  name "Authy Desktop"
  desc "Two-factor authentication software"
  homepage "https://authy.com/"

  livecheck do
    url "https://electron.authy.com/download?channel=stable&arch=x64&platform=darwin&version=latest&product=authy"
    strategy :header_match
  end

  auto_updates true

  app "Authy Desktop.app"

  zap trash: [
    "~/Library/Application Support/Authy Desktop",
    "~/Library/Caches/com.authy.authy-mac",
    "~/Library/Caches/com.authy.authy-mac.ShipIt",
    "~/Library/Cookies/com.authy.authy-mac.binarycookies",
    "~/Library/Preferences/com.authy.authy-mac.helper.plist",
    "~/Library/Preferences/com.authy.authy-mac.plist",
  ]
end
