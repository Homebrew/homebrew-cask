cask "orion" do
  version "0.99,115.3"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "fe0ac1e546e0a5e3ad18ed108b2566c6d4ea2d0f329e2c5c2465fd27ac5d693f"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "ff5a01fcc9bd0f06979fb077d783c9ec31dac069e4d729cde85b030c7014d054"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "2809a6d9b6f7941a8c064246c60b76adab4404ead4172ae588279bfe31d00117"
  else
    macos_version_string = "12_0"
    sha256 "11d40539b3b98c46ba2a358570a1f9f0cfb5623b196a44744499772b753939f7"
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
