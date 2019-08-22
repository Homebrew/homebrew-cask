cask 'sf-symbols' do
  version '1.0,12'
  sha256 'bf5854278d00bd2eaba0c5ae25aa6d4bfbfd7b5113c782a600d6aee5e67caf05'

  url 'https://developer.apple.com/design/downloads/SF-Symbols.dmg'
  name 'SF Symbols'
  homepage 'https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/'

  depends_on macos: '>= :mojave'

  pkg 'SFSymbols.pkg'

  uninstall pkgutil: 'com.apple.SFSymbols.plist',
            delete:  '/Applications/SF Symbols.app'
end
