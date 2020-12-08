cask "output-factory" do
  version "2.4.51"
  sha256 "cda2dd880e1e14aef43d0df9319ca92ca6fb5b67a247d6e5419b7d651e80187d"

  url "https://zevrix.com/downloads/OutputFactory.dmg"
  name "Output Factory"
  desc "Automate printing and exporting from Adobe InDesign"
  homepage "https://zevrix.com/OutputFactory/"

  installer script: "Output Factory Installer.app/Contents/MacOS/Zevrix Installer"

  uninstall trash: [
    "/Applications/Adobe Indesign 2021/Plug-Ins/Zevrix/Output Factory.app",
    "/Applications/Adobe Indesign 2020/Plug-Ins/Zevrix/Output Factory.app",
  ]

  zap trash: [
    "~/Library/Preferences/com.zevrix.OutputFactory.plist",
    "~/Library/Caches/com.zevrix.OutputFactory",
  ]
end
