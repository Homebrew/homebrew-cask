cask "nexonplug" do
  version :latest
  sha256 :no_check

  url "https://platform.nexon.com/NGM/Bin/Install_NexonPlug.pkg"
  name "Nexon Plug"
  desc "Launcher for Nexon games"
  homepage "https://www.nexon.com/"

  depends_on macos: ">= :catalina"

  pkg "Install_NexonPlug.pkg"

  uninstall pkgutil: "com.nexon.plug.pkg"

  zap trash: [
    "~/Library/Application Support/MapleStory",
    "~/Library/Caches/com.nexon.plug",
    "~/Library/Caches/com.nexon.plug.helper",
  ]
end
