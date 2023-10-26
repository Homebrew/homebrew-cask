cask "qingg" do
  version "2.15"
  sha256 "f06747f985146b041df0883c12256adbdfe8e8608db0ac8a0d7a1ef12aa24f85"

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  name "QinggIM"
  name "清歌输入法"
  desc "Wubi input method"
  homepage "https://qingg.im/mac/"

  livecheck do
    url "https://qingg.im/sparkle/appcast.php"
    strategy :sparkle, &:short_version
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
