cask "qt-design-studio" do
  version "4.7.1-0-202503281851"
  sha256 "3fd384a4e72d8480c8d97188129140e93fea520d8d1f12b8753fa17d6c8b2dfc"

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
