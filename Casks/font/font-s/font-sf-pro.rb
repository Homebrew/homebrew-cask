cask "font-sf-pro" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Pro.dmg"
  name "San Francisco Pro"
  name "SF Pro"
  homepage "https://developer.apple.com/fonts/"

  pkg "SF Pro Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.SFProFonts"

  # No zap stanza required
end
