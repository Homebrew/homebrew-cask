cask "qingg" do
  version "2.10,3410"
  sha256 "04a116bf164d7720f6ed165dadc256b56f51f669089d626a4431bcc4fbc70af0"

  url "https://qingg.im/download/Qingg-#{version.before_comma}.dmg"
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
    "~/Library/Application Support/Qingg",
    "~/Library/Application Support/com.aodaren.inputmethod.Qingg",
    "~/Library/Caches/com.aodaren.inputmethod.Qingg",
    "~/Library/Preferences/com.aodaren.inputmethod.Qingg.plist",
  ]
end
