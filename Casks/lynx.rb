cask "lynx" do
  version "7.7.12.0"
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
end
