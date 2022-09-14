cask "orion" do
  version "0.99,120"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "84a49d16ea825a7529116a1f23a12642ceffbf86f1a3ff56fdb8d802ee069bb1"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "12ad3eefe1cbcbe7c5482622de071e1df42c5c83877779f4ad146cfa736b84ad"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "b6783a0074ab9d0238f1d4e9b7f4718e71c3458d3fb95fc01da15cfe3ec489c8"
  else
    macos_version_string = "12_0"
    sha256 "593bf4c43fea1f9121567b5048bb1da35740c8519ec6e4c4ebdd5b7636e8365e"
  end
  url "https://browser.kagi.com/updates/#{macos_version_string}/#{version.csv.second}.zip"
  name "Orion Browser"
  desc "WebKit based web browser"
  homepage "https://browser.kagi.com/"

  livecheck do
    url "https://browser.kagi.com/updates/#{macos_version_string}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Orion.app"

  uninstall quit: "com.kagi.kagimacOS"

  zap trash: [
    "~/Library/Application Scripts/com.kagi.kagimacOS.ShareExtension",
    "~/Library/Application Support/Orion",
    "~/Library/Caches/com.kagi.kagimacOS",
    "~/Library/Containers/com.kagi.kagimacOS.ShareExtension",
    "~/Library/HTTPStorages/com.kagi.kagimacOS*",
    "~/Library/Preferences/com.kagi.kagimacOS.plist",
    "~/Library/WebKit/com.kagi.kagimacOS",
  ]
end
