cask "orion" do
  version "0.99,119"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "f164f67f0e0b3576d765103826e4158dc976457e0f74413d54b3df805a88c15b"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "7dc4a69e0b3001b0d130ce3e261b876ff167dcd1b4979f36856de3f4dba46e75"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "7f591e86d17df0c0e4294934efa6af2480abbe1167f421f33e94592ed474b3a8"
  else
    macos_version_string = "12_0"
    sha256 "7524136a27309b2000d37692e05c432ee85c0799436260b4529284483ce111a6"
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
