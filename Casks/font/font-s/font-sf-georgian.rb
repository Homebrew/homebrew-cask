cask "font-sf-georgian" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Georgian.dmg"
  name "San Francisco Georgian"
  name "SF Georgian"
  homepage "https://developer.apple.com/fonts"

  pkg "SF Georgian Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.SFGeorgianFonts"

  # No zap stanza required
end
