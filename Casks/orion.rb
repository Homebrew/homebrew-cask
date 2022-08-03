cask "orion" do
  version "0.99,118"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "b4fd31283545b934213fc6d04830a0b26344dc2aa570a47fb8bd6544e95aae64"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "2642744f9a3671c3368a81cc56da6070550583306010b0421cf54c99d2c7b1f7"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "d33c1500e5f678f40d16e160ca39b979a51fd20cd74f482be1b5a32af95471c5"
  else
    macos_version_string = "12_0"
    sha256 "ff636f7e737b948b38fe833aa5da8076c158c330202bbfa211d41beeca86a2ba"
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
