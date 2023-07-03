cask "authy" do
  version "2.3.0"
  sha256 "5166fd399d3dfe1ff2afcd8652f708518caf2689529d3f43bb41bb692ad4ec81"

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
