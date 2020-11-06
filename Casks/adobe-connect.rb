cask "adobe-connect" do
  version "10.2,2019.9.2"
  sha256 "a741ddf5a863bed4a3d4730427844ec93215a472371af4fa8de9c22ac653b224"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma.dots_to_underscores}/AdobeConnect_#{version.after_comma}.dmg"
  name "Adobe Connect"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
