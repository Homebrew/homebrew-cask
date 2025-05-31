cask "output-factory" do
  version "3.1"
  sha256 :no_check

  url "https://zevrix.com/downloads/OutputFactory.dmg"
  name "Output Factory"
  desc "Automate printing and exporting from Adobe InDesign"
  homepage "https://zevrix.com/OutputFactory/"

  livecheck do
    url "https://zevrix.com/zsversioncontrol/ZSVersionControl.xml"
    strategy :xml do |xml|
      xml.elements[
        "//dict/key[text()='Output Factory']/following-sibling::dict[1]/key[text()='version']",
      ]&.next_element&.text
    end
  end

  installer manual: "Output Factory Installer.app"

  uninstall trash: "/Applications/Adobe Indesign */Plug-Ins/Zevrix/Output Factory.app"

  zap trash: [
    "~/Library/Caches/com.zevrix.OutputFactory",
    "~/Library/Preferences/com.zevrix.OutputFactory.plist",
  ]
end
