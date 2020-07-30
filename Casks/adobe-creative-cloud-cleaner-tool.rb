cask "adobe-creative-cloud-cleaner-tool" do
  version :latest
  sha256 :no_check

  url "https://swupmf.adobe.com/webfeed/CleanerTool/mac/AdobeCreativeCloudCleanerTool.dmg"
  name "Adobe Creative Cloud Cleaner Tool"
  homepage "https://helpx.adobe.com/creative-cloud/kb/cc-cleaner-tool-installation-problems.html"

  app "Adobe Creative Cloud Cleaner Tool.app"

  uninstall quit: "com.Adobe.Installers.AdobeCreativeCloudCleanerTool"

  zap trash: [
    "~/Library/Caches/com.Adobe.Installers.AdobeCreativeCloudCleanerTool",
    "~/Library/Saved Application State/com.Adobe.Installers.AdobeCreativeCloudCleanerTool.savedState",
    "~/Library/Logs/Adobe Creative Cloud Cleaner Tool.log",
  ]
end
