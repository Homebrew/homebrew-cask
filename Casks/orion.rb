cask "orion" do
  version "0.99,120.1"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "128d53fdd986853312823e376d0c15effe90a6d85662e279f7bd2398d7fbc443"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "74ea7eb46d9177ccbcd64ce24b87e08d6b4feeb1d5f1804bdd4bc075d33353eb"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "61d29b02d1d5e2d430ea3497cb40b7792dec45029487f1778d56f1bf9e333876"
  else
    macos_version_string = "12_0"
    sha256 "3403dd4933540f1c8e534da063096cb8e89879dfa6724df9911b4d392356a40b"
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
