cask "adobe-connect" do
  version "2025.8.157,11"
  sha256 "cf03616ec0fe090d59c32c65e31ea870d8f20d2a2bbe629c6eb39ff653eefa28"

  # TODO: Remove the leading `0` from the minor version when Adobe updates the URL pattern.
  # url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.second}/AdobeConnect_#{version.csv.first.dots_to_underscores}.dmg"
  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.second}/AdobeConnect_#{version.csv.first.major}_0#{version.csv.first.minor}_#{version.csv.first.patch}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  livecheck do
    url "https://helpx.adobe.com/adobe-connect/connect-downloads-updates.html",
        user_agent: :browser
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
