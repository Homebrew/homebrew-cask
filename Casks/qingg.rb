cask "qingg" do
  version "2.11,3411"
  sha256 "e08f5831b27b4ffaef0537c79253904352219064de44566969c5ee417e92c705"

  url "https://qingg.im/download/Qingg-#{version.csv.first}.dmg"
  name "QinggIM"
  name "清歌输入法"
  desc "Wubi input method"
  homepage "https://qingg.im/mac/"

  livecheck do
    url "https://qingg.im/sparkle/appcast.php"
    strategy :sparkle
  end

  auto_updates true

  pkg "安装包.pkg"

  uninstall pkgutil: "com.aodaren.*"

  zap trash: [
    "~/Library/Application Support/com.aodaren.inputmethod.Qingg",
    "~/Library/Application Support/Qingg",
    "~/Library/Caches/com.aodaren.inputmethod.Qingg",
    "~/Library/Preferences/com.aodaren.inputmethod.Qingg.plist",
  ]
end
