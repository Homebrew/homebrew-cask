cask "qingg" do
  version "2.14"
  sha256 "26680dbc411f15c460866f07b2f4a7849d11f2717983688592d2c406cccc0e31"

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
