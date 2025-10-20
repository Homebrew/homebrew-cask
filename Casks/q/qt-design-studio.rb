cask "qt-design-studio" do
  version "4.8.0-0-202510131057"
  sha256 "cd25b84ac326924bdcde6ca2e49c81664a63a5653c9898d3cbc484ee2e95e583"

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
