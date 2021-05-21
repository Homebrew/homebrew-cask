cask "adobe-connect" do
  version "11,2021.4.36"
  sha256 "fe56b2e5e000f6f0ca80ecbae8b59798cb0bb9c944f39a556711465a9f4561d6"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.before_comma}/AdobeConnect_#{version.after_comma.dots_to_underscores}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"
end
