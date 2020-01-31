cask 'brook' do
  version '20200201'
  sha256 '4b964bad957e69d94bf7ef2ec6616d7329f9e5b1a3967296c1fa7968cb99b0c6'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.pkg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  pkg 'Brook.pkg'

  uninstall pkgutil: 'com.txthinking.base.pkg'
end
