cask "font-sf-hebrew" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Hebrew.dmg"
  name "San Francisco Hebrew"
  name "SF Hebrew"
  homepage "https://developer.apple.com/fonts"

  pkg "SF Hebrew Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.SFHebrewFonts"

  # No zap stanza required
end
