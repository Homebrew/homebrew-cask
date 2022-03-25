cask "authy" do
  version "2.1.0"
  sha256 "988f53a6d18fce648f5c6f6055cb7db644f186667a3d7fce6571f288f94e70e6"

  url "https://authy-electron-repository-production.s3.amazonaws.com/authy/stable/#{version}/darwin/x64/Authy%20Desktop-#{version}.dmg",
      verified: "authy-electron-repository-production.s3.amazonaws.com/"
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
