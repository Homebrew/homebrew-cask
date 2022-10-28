cask "orion" do
  version "0.99,121"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 ""
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 ""
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "25c7a674b5842dcfd6a94c69d386c2a670c7219289facb26efaf8927cdef8c63"
  elsif MacOS.version <= :monterey
    macos_version_string = "12_0"
    sha256 "dd178dbc6a5e3ecc497b109b7227273ceb14e1fd26c72d0960c012fe5785a036"
  else
    macos_version_string = "13_0"
    sha256 "c14c6ba313330d36e996f6e62ca21753f020da28b658c5a1afb4302d2ec62a84"
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
