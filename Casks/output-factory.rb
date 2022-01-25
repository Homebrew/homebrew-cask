cask "output-factory" do
  version "2.4.75"
  sha256 :no_check

  url "https://zevrix.com/downloads/OutputFactory.dmg"
  name "Output Factory"
  desc "Automate printing and exporting from Adobe InDesign"
  homepage "https://zevrix.com/OutputFactory/"

  livecheck do
    url "https://zevrix.com/download/"
    regex(/Output\s*Factory\s*(\d+(?:\.\d+)+)/i)
  end

  installer manual: "Output Factory Installer.app"

  uninstall trash: "/Applications/Adobe Indesign */Plug-Ins/Zevrix/Output Factory.app"

  zap trash: [
    "~/Library/Caches/com.zevrix.OutputFactory",
    "~/Library/Preferences/com.zevrix.OutputFactory.plist",
  ]
end
