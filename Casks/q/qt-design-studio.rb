cask "qt-design-studio" do
  version "4.8.1-0-202511211723"
  sha256 "9939e03748468e2dd6a2b8ad334ebbbfe8b2f182c247d319821e5c6359ede46c"

  url "https://download.qt.io/online/qtsdkrepository/mac_x64/desktop/tools_qtdesignstudio_generation2/qt.tools.qtdesignstudio/#{version}opensource.7z"
  name "Qt Design Studio"
  desc "UI design and development tool"
  homepage "https://www.qt.io/product/ui-design-tools"

  livecheck do
    url "https://download.qt.io/online/qtsdkrepository/mac_x64/desktop/tools_qtdesignstudio_generation2/Updates.xml"
    strategy :xml do |xml|
      xml.elements["//PackageUpdate[Name='qt.tools.qtdesignstudio']/Version"]&.text&.strip
    end
  end

  depends_on macos: ">= :monterey"

  app "Qt Design Studio.app"

  zap trash: [
    "~/Library/Preferences/org.qt-project.qtdesignstudio.plist",
    "~/Library/Saved Application State/org.qt-project.qtdesignstudio.savedState",
  ]
end
