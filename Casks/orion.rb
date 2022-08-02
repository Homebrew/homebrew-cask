cask "orion" do
  version "0.99,117"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "5da34dd0ad4c49864d840354819fae71e0c5f13ae5bff82f8ee6b8ef8c470e8a"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "9496df550dbf36ee5a8186d581672ef0164eb1777a3aae77fef139486b7afe98"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "993d9432f32426e7a06ddb8f59e3dd90668c0de69f48440688cfc47d875f458f"
  else
    macos_version_string = "12_0"
    sha256 "99c01600495c79406e775ffde677acff1e10723434487063b3a3e8241e2bf74c"
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
