cask "orion" do
  version "0.99,121.1"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    macos_dependency = ":mojave"
    sha256 "05b90e0c714e67575c929f824b80e5e8e3bad2b8b5916e7e67b184409a9a742f"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    macos_dependency = ":catalina"
    sha256 "97af577dbc1f1177220e7d0a31d199397af725905a59e4c75b3cf4dedc19f337"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    macos_dependency = ":big_sur"
    sha256 "4a97641e1abd4eb85bc9efb015878596c0a21f089393f7371925c818f42f683a"
  elsif MacOS.version <= :monterey
    macos_version_string = "12_0"
    macos_dependency = ":monterey"
    sha256 "7ca512efb144ef46c31b68b5b91ee5c784ebbf17f25a3812ed5f6d870c881ed1"
  else
    macos_version_string = "13_0"
    macos_dependency = ":ventura"
    sha256 "8072eca95d4556aa4d21a5d017f05ea7e68d7782f44fb9cec15f3dac79f667b4"
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
  depends_on macos: ">= #{macos_dependency}"

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
