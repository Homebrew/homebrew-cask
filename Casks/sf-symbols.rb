cask "sf-symbols" do
  if MacOS.version <= :mojave
    version "1.1"
    sha256 "eddca84dde246f358429e47a8a7906b026d892dba97e556b555b27e7070de04e"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols.dmg"
  else
    version "3.3"
    sha256 "351135280b21d3c5ca958e362bfde3207a1e548b1ff427876c2c42301c86c7bc"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"
  end

  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  livecheck do
    url "https://developer.apple.com/sf-symbols/"
    regex(%r{href=.*?/SF-Symbols-(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.SFSymbols.plist",
            delete:  "/Applications/SF Symbols.app"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
