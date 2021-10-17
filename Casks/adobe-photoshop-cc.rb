cask "adobe-photoshop-cc" do
  version "22.5.1"
  sha256 "7928b92a82663ea4bdbbc62efb9a2595538a2b4702ecb4eff6f7bc2537685341"

  url "https://prod-rel-ffc-ccm.oobesaas.adobe.com/adobe-ffc-external/core/v1/wam/download?sapCode=PHSP&productName=Photoshop&version=#{version}&os=mac",
      verified: "adobe.com"
  name "Adobe Photoshop CC"
  desc "Create beatiful graphics, photos and art anywhere"
  homepage "https://www.adobe.com/products/photoshop.html"

  auto_updates true
  depends_on cask: "adobe-creative-cloud"

  installer script: {
    executable: "Photoshop Installer.app/Contents/MacOS/Install"
  }

  uninstall quit: "com.adobe.Photoshop"
  uninstall script: {
    executable: "/Library/Application Support/Adobe/Uninstall/PHSP_22_5_1.app/Contents/MacOS/Uninstaller"
  }

  zap trash: "~/Library/Preferences/com.adobe.Photoshop.plist"

end
