cask "adobe-connect" do
  version "11,2024.4.729"
  sha256 "2a40d19250cb924c42f39a6ad4c2467d297f2ff164ebaab520646408fa3fd834"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.first.dots_to_underscores}/AdobeConnect_#{version.csv.second.dots_to_underscores}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    url "https://www.adobe.com/go/ConnectMac11Plus"
    regex(%r{/(\d+(?:[._]\d+)*)/AdobeConnect[._-]?(\d+(?:[._]\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2].tr("_", ".")}"
    end
  end

  auto_updates true

  installer manual: "AdobeConnectInstaller.app"

  uninstall delete: "/Applications/Adobe Connect"

  zap trash: [
    "~/adobeconnectapp.log",
    "~/AdobeConnectAppCache",
    "~/Library/Caches/com.adobe.adobeconnect.app",
    "~/Library/Caches/com.adobe.cefconnect.app",
    "~/Library/HTTPStorages/com.adobe.adobeconnect.app",
    "~/Library/HTTPStorages/com.adobe.cefconnect.app",
    "~/Library/LaunchAgents/com.adobe.connectDetector.plist",
    "~/Library/Preferences/com.adobe.adobeconnect.app.plist",
    "~/Library/Preferences/com.adobe.cefconnect.helper.renderer.plist",
    "~/Library/Saved Application State/com.adobe.adobeconnect.app.savedState",
    "~/Library/Saved Application State/com.adobe.cefconnect.app.savedState",
  ]
end
