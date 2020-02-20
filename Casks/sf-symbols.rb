cask 'sf-symbols' do
  version :latest
  sha256 :no_check

  url 'https://developer.apple.com/design/downloads/SF-Symbols.dmg'
  name 'SF Symbols'
  homepage 'https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/'

  depends_on macos: '>= :mojave'

  pkg 'SF Symbols.pkg'

  uninstall pkgutil: 'com.apple.SFSymbols.plist',
            delete:  '/Applications/SF Symbols.app'
end
