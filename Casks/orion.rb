cask "orion" do
  version "0.99,116"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "4493d943085c12676259a26c00841c45afd708baee90ae487f6aa1d8ce01324e"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "91eb74386c12238bc89e509a67d68e75596754be667f310b1e9a18cfdfc5cc9c"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "a496222ed4c502c08fc01c4007b523fdda75abbe01097b7d77c1c3f596114642"
  else
    macos_version_string = "12_0"
    sha256 "f30923721eee903bc7389b8b58aa48cc5d90243b8ac3edb3c45349e55822c77b"
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
