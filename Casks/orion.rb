cask "orion" do
  version "0.99,122"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    macos_dependency = ":mojave"
    sha256 "7771ff6d39b4169e991233acc6ef14702ddf8c1603a151b32f2782d07e93a0ce"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    macos_dependency = ":catalina"
    sha256 "0a4788f91735faa57a091348855d974e07ae8356c1b944780338ec3c03d48cc6"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    macos_dependency = ":big_sur"
    sha256 "d2bf100f0f706df318dcc5807604f94e4864598bc45d6173d50cefc7327ca35b"
  elsif MacOS.version <= :monterey
    macos_version_string = "12_0"
    macos_dependency = ":monterey"
    sha256 "799cb362caad3020be49e836967eebf835a53ce167097853d2a37ae3cb3dbcda"
  else
    macos_version_string = "13_0"
    macos_dependency = ":ventura"
    sha256 "635b32f4fdd5a8bb6da238eed6895b571633b965d1d381fd5b03003178b5b9d6"
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
