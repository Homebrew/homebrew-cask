cask "sf-symbols" do
  if MacOS.version <= :mojave
    version "1.1"
    sha256 "eddca84dde246f358429e47a8a7906b026d892dba97e556b555b27e7070de04e"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols.dmg"
  else
    version "4"
    sha256 "479b66ce7eb308ca0eff826675325e11e7932fcca407d065261822be5c2ec8cb"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"
  end

  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  livecheck do
    url "https://developer.apple.com/sf-symbols/"
    regex(%r{href=.*?/SF-Symbols-(\d+(?:\.\d+)*)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.SFSymbols.plist",
            delete:  "/Applications/SF Symbols.app"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
