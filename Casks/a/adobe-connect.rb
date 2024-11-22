cask "adobe-connect" do
  version "2024.11.64,11"
  sha256 "0b5481409f831934885ea5e51403aec89467829076257625cc86a28f9dd07cf7"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.second}/AdobeConnect_#{version.csv.first.dots_to_underscores}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    url "https://helpx.adobe.com/adobe-connect/connect-downloads-updates.html"
    regex(/macOS.*?v?(\d+(?:\.\d+)+)[< "]/im)
    strategy :page_match do |page, regex|
      version = page.scan(regex)&.flatten&.first
      directory = page.scan(/href=.*ConnectMac(\d+)Plus/i)&.flatten&.first
      next if version.blank? || directory.blank?

      "#{version},#{directory}"
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
