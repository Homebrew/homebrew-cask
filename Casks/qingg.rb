cask "qingg" do
  version "2.8.1"
  sha256 "e38daedf7e2e30ed078c7f9094323b78f8685ebcaafa6b42b0c792ed41c388c7"

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  appcast "https://qingg.im/sparkle/appcast.php"
  name "QinggIM"
  name "清歌输入法"
  homepage "https://qingg.im/mac/"

  auto_updates true

  pkg "Qingg.pkg"

  uninstall pkgutil: "com.aodaren.*"

  zap trash: [
    "~/Library/Application Support/Qingg",
    "~/Library/Application Support/com.aodaren.inputmethod.Qingg",
    "~/Library/Caches/com.aodaren.inputmethod.Qingg",
    "~/Library/Preferences/com.aodaren.inputmethod.Qingg.plist",
  ]
end
