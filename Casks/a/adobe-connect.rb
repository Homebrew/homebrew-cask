cask "adobe-connect" do
  on_arm do
    version "2026.10.66,11"
    sha256 "f3f70e8451806394e5385d77ee653c54ec4ad79ab00e228de9e9d4addacbbc68"

    livecheck do
      url "https://www.adobe.com/go/ConnectMac11Plus",
          user_agent: :curl
      regex(%r{/v?(\d+(?:\.\d+)*)/AdobeConnect[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
      strategy :header_match do |headers, regex|
        match = headers["location"]&.match(regex)
        next unless match

        "#{match[2].tr("_", ".")},#{match[1]}"
      end
    end
  end
  on_intel do
    version "2026.01.39,11"
    sha256 "e1f1d1497b2bea65b77729771fc304e4792a9fa0db92e179e836039e02b35392"

    livecheck do
      url "https://www.adobe.com/go/ConnectMac11PlusIntel",
          user_agent: :curl
      regex(%r{/v?(\d+(?:\.\d+)*)/AdobeConnect[._-]v?(\d+(?:[._]\d+)+)\.dmg}i)
      strategy :header_match do |headers, regex|
        match = headers["location"]&.match(regex)
        next unless match

        "#{match[2].tr("_", ".")},#{match[1]}"
      end
    end
  end

  url "https://download.adobe.com/pub/connect/updaters/meeting/#{version.csv.second}/AdobeConnect_#{version.csv.first.major}_#{version.csv.first.minor}_#{version.csv.first.patch}.dmg"
  name "Adobe Connect"
  desc "Virtual meeting client"
  homepage "https://www.adobe.com/products/adobeconnect.html"

  auto_updates true
  depends_on :macos

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
