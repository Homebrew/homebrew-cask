cask "orion" do
  version "0.99,115.2"

  if MacOS.version <= :mojave
    macos_version_string = "10_14"
    sha256 "9dfc49f05667abbe3eeaab7935a7a22a11bcac468162030396ad8e0db9510078"
  elsif MacOS.version <= :catalina
    macos_version_string = "10_15"
    sha256 "6e29548384a43fb76d910d204d12032efa82c1e29b1a529ca9a4e362f786876c"
  elsif MacOS.version <= :big_sur
    macos_version_string = "11_0"
    sha256 "cc0a9fe77b9449fcb96e7f6cbf020dc6addb03a0a1981f3aa3fe7cab9a16dc24"
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
