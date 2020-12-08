cask "output-factory" do
  version "2.4.51"
  sha256 :no_check

  url "https://zevrix.com/downloads/OutputFactory.dmg"
  name "Output Factory"
  desc "Automate printing and exporting from Adobe InDesign"
  homepage "https://zevrix.com/OutputFactory/"

  installer manual: "Output Factory Installer.app"

  uninstall trash: [
    "/Applications/Adobe Indesign 2020/Plug-Ins/Zevrix/Output Factory.app",
    "/Applications/Adobe Indesign 2021/Plug-Ins/Zevrix/Output Factory.app",
  ]

  zap trash: [
    "~/Library/Caches/com.zevrix.OutputFactory",
    "~/Library/Preferences/com.zevrix.OutputFactory.plist",
  ]
end
