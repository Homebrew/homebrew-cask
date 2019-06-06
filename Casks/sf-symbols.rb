cask 'sf-symbols' do
  version '1.0'
  sha256 'f822046b1880377e4c8d1df8fd807d9335404a21245bb8abcb3481c6dd47c5a0'

  url 'https://developer.apple.com/design/downloads/SF-Symbols.dmg'
  name 'SF Symbols'
  homepage 'https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/'

  depends_on macos: '>= :mojave'

  pkg 'SFSymbols.pkg'

  uninstall pkgutil: 'com.apple.SFSymbols.plist',
            delete:  '/Applications/SF Symbols.app'
end
