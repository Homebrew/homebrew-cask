cask "orion" do
  version "0.99,115.1"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "787b8e09e9206cf120d72a990ba678e3f89687462a778a321ad224cdc36ea6b3"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "1c2197e7f664d70457af0741c29942b878214df9eb80baca7e5239b1466cf112"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "ada4f867729f9e447f285fb0189b37ee319138977bddc3539d4c86f27b4f6283"
  else
    macos_version_string = "12_0"
    sha256 "42663ee2ab0bada6782dc46e39d0d9445d4e8c22edb279e5f8a439ba25cf673d"
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
