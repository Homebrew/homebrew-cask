cask "font-sf-armenian" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Armenian.dmg"
  name "San Francisco Armenian"
  name "SF Armenian"
  homepage "https://developer.apple.com/fonts"

  pkg "SF Armenian Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.SFArmenianFonts"

  # No zap stanza required
end
