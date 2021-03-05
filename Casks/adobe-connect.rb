cask "adobe-connect" do
  version "11,2021.2.18"
  sha256 "9db35ce360935fb6e26e3d042d75528fa2fd957dab014ca0d0cf4ede21933688"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma}/AdobeConnect_#{version.after_comma.dots_to_underscores}.dmg"
  name "Adobe Connect"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
