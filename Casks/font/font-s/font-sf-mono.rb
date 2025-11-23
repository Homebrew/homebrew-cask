cask "font-sf-mono" do
  version :latest
  sha256 :no_check

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Mono.dmg"
  name "San Francisco Mono"
  name "SF Mono"
  homepage "https://developer.apple.com/fonts/"

  pkg "SF Mono Fonts.pkg"

  uninstall pkgutil: "com.apple.pkg.SFMonoFonts"

  # No zap stanza required
end
