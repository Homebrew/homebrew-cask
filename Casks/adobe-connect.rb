cask "adobe-connect" do
  version "11,2020.10.3"
  sha256 "958e7ebd3faf561a305b57cc0f8d2056a8c574023ae1bfa359889d2e8e772ff5"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma.dots_to_underscores}/AdobeConnect_#{version.after_comma}.dmg"
  name "Adobe Connect"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
