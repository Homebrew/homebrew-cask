cask "adobe-connect" do
  version "11,2021.3.27"
  sha256 "fafd3769e3e26527f602ed28076afdda5927ac7504e805e99a4bbf80dcd5509d"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma}/AdobeConnect_#{version.after_comma.dots_to_underscores}.dmg"
  name "Adobe Connect"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
