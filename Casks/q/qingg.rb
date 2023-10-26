cask "qingg" do
  version "2.15"
  sha256 "f06747f985146b041df0883c12256adbdfe8e8608db0ac8a0d7a1ef12aa24f85"

  url "https://qingg.im/download/Qingg-#{version}.dmg"
  name "QinggIM"
  name "清歌输入法"
  desc "Wubi input method"
  homepage "https://qingg.im/mac/"

  # The `shortVersionString` value may contain additional text besides the
  # numeric version (e.g., `2.15 十周年纪念版`), so we match the version from
  # the URL in this instance.
  livecheck do
    url "https://qingg.im/sparkle/appcast.php"
    regex(/Qingg[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)/i)
    strategy :sparkle do |item|
      match = item&.url&.match(regex)
      next if match.blank?

      match[1]
    end
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
