cask "orion" do
  version "0.99,115.2"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "s0548c4c806487ccff01249142aad71c68c050ed01b864471cd28c4e27281d02a"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "d35390efafa4894fbce829adaef2aa0fe3308d8fc35f799191ab9a170bdbb861"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "8b02985f97c799edb8bcdf17f49ef264f2abfc042ccbdca06d9698ed2ddafefa"
  else
    macos_version_string = "12_0"
    sha256 "80b2ffdf3fb8142c66630a813836f52ea237cddd447911940be2c8a976b4bff9"
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
