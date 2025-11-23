cask "font-new-york" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/NY.dmg"
  name "New York"
  name "NY"
  homepage "https://developer.apple.com/fonts/"

  pkg "NY Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.NYFonts"

  # No zap stanza required
end
