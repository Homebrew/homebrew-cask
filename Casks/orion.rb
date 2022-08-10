cask "orion" do
  version "0.99,118.1"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "b5b499d6f1b2c9f9345c353ce4d7c2a647bd6e365481a1f612c49b4991f6e279"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "bf2de654537799558b3df01d85bdf494a75cd7b7ecad06d5985afb6cec9a6ff9"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "da7b8fc8c78e5c9ffb0cdfa252cf67152dd15ffb4fb14548ffd1e2ec2fc4471e"
  else
    macos_version_string = "12_0"
    sha256 "e703ef76d095ce89ca9775d1682f228a5afc6f13ed3f24b0b994fbb87621c02a"
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
