cask "adobe-creative-cloud-cleaner-tool" do
  version "4.3.0.201"
  sha256 :no_check

  url "https://swupmf.adobe.com/webfeed/CleanerTool/mac/AdobeCreativeCloudCleanerTool.dmg"
  name "Adobe Creative Cloud Cleaner Tool"
  desc "Utility to clean up corrupted installations of Adobe software"
  homepage "https://helpx.adobe.com/creative-cloud/kb/cc-cleaner-tool-installation-problems.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Adobe Creative Cloud Cleaner Tool.app"

  uninstall quit: "com.Adobe.Installers.AdobeCreativeCloudCleanerTool"

  zap trash: [
    "~/Library/Caches/com.Adobe.Installers.AdobeCreativeCloudCleanerTool",
    "~/Library/Logs/Adobe Creative Cloud Cleaner Tool.log",
    "~/Library/Saved Application State/com.Adobe.Installers.AdobeCreativeCloudCleanerTool.savedState",
  ]
end
