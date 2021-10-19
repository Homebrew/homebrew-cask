cask "adobe-photoshop-cc" do
  version "22.5.1"
  sha256 "7928b92a82663ea4bdbbc62efb9a2595538a2b4702ecb4eff6f7bc2537685341"

  url "https://prod-rel-ffc-ccm.oobesaas.adobe.com/adobe-ffc-external/core/v1/wam/download?sapCode=PHSP&productName=Photoshop&version=#{version}&os=mac"
  name "Adobe Photoshop CC"
  desc "Create beatiful graphics, photos and art anywhere"
  homepage "https://www.adobe.com/products/photoshop.html"

  livecheck do
    url "https://helpx.adobe.com/photoshop/kb/fixed-issues.html"
    regex(/(\d+(?:\.\d+)*)/i)
  end

  auto_updates true
  depends_on cask: "adobe-creative-cloud"

  installer script: {
    executable: "Photoshop Installer.app/Contents/MacOS/Install",
  }

  uninstall script: {
    executable: "/Library/Application Support/Adobe/Uninstall/PHSP_#{version.gsub(/"."/, "_")}.app/Contents/MacOS/Uninstaller",
  }
end
