cask "adobe-connect" do
  version "2026.01.39,11"
  sha256 "e1f1d1497b2bea65b77729771fc304e4792a9fa0db92e179e836039e02b35392"

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.second}/AdobeConnect_#{version.csv.first.major}_#{version.csv.first.minor}_#{version.csv.first.patch}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    url "https://helpx.adobe.com/adobe-connect/connect-downloads-updates.html",
        user_agent: :browser
    regex(/Download\s+for\s+macOS.*?v?(\d+(?:\.\d+)+)[< "]/im)
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
