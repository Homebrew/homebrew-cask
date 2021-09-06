cask "qingg" do
  version "2.9,3400"
  sha256 "00dd9c50b77e91f9b5d0ba407caf1f4cf5e99b93f47c733811c5e9f8f55ed7b8"

  url "https://qingg.im/download/Qingg-#{version.before_comma}.dmg"
  name "QinggIM"
  name "清歌输入法"
  homepage "https://qingg.im/mac/"

  livecheck do
    url "https://qingg.im/sparkle/appcast.php"
    strategy :sparkle
  end

  auto_updates true

  pkg "安装包.pkg"

  uninstall pkgutil: "com.aodaren.*"

  zap trash: [
    "~/Library/Application Support/Qingg",
    "~/Library/Application Support/com.aodaren.inputmethod.Qingg",
    "~/Library/Caches/com.aodaren.inputmethod.Qingg",
    "~/Library/Preferences/com.aodaren.inputmethod.Qingg.plist",
  ]
end
