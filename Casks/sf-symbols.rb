cask "sf-symbols" do
  on_mojave :or_older do
    version "1.1"
    sha256 "eddca84dde246f358429e47a8a7906b026d892dba97e556b555b27e7070de04e"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "5"
    sha256 "4e0ba15b0bf24e40f5e3a06c2a87a3bab42b723863366c46077b95e36cc094af"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"

    livecheck do
      url "https://developer.apple.com/sf-symbols/"
      regex(%r{href=.*?/SF-Symbols-(\d+(?:\.\d+)*)\.dmg}i)
    end
  end

  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.pkg.SFSymbols"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
