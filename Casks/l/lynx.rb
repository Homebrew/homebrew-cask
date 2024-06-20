cask "lynx" do
  version "8.3.10.0"
  sha256 :no_check

  url "https://downloads.lynxcloud.app/lynx-whiteboard/releases/macx/lynx-whiteboard.pkg"
  name "LYNX Whiteboard by Clevertouch"
  desc "Cross platform presentation and productivity app"
  homepage "https://www.lynxcloud.app/"

  livecheck do
    url "https://downloads.lynxcloud.app/lynx-whiteboard/releases/macx/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  pkg "lynx-whiteboard.pkg"

  uninstall pkgutil: [
    "com.clevertouch.lynx",
    "uk.co.clevertouch.Lynx",
  ]

  zap trash: [
    "~/Library/Application Support/lynx",
    "~/Library/Preferences/com.lynx.4.plist",
    "~/Library/Saved Application State/uk.co.clevertouch.Lynx.savedState",
  ]
end
