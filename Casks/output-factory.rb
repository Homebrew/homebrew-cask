cask "output-factory" do
  version "2.4.52"
  sha256 :no_check

  url "https://zevrix.com/downloads/OutputFactory.dmg"
  name "Output Factory"
  desc "Automate printing and exporting from Adobe InDesign"
  homepage "https://zevrix.com/OutputFactory/"

  installer manual: "Output Factory Installer.app"

  uninstall trash: "/Applications/Adobe Indesign */Plug-Ins/Zevrix/Output Factory.app"

  zap trash: [
    "~/Library/Caches/com.zevrix.OutputFactory",
    "~/Library/Preferences/com.zevrix.OutputFactory.plist",
  ]
end
