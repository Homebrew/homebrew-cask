cask "adobe-connect" do
  version "11,2021.1.2"
  sha256 "efa1cab4f61cec4eb0dda0360e088a0e6fe0f921136299d17e4d2313c1612471"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma}/AdobeConnect_#{version.after_comma.dots_to_underscores}.dmg"
  name "Adobe Connect"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
