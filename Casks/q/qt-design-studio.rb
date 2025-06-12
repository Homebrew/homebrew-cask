cask "qt-design-studio" do
  version "4.7.2-0-202506061435"
  sha256 "460084c750cfc0e802322230d331c9aa690615ae602e9236e52f45ce8be4f06d"

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

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :monterey"

  app "Qt Design Studio.app"

  zap trash: [
    "~/Library/Preferences/org.qt-project.qtdesignstudio.plist",
    "~/Library/Saved Application State/org.qt-project.qtdesignstudio.savedState",
  ]
end
