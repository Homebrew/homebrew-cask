cask 'brook' do
  version '20200102'
  sha256 'ee4fbeba88fa57bb0702612ba32e8e5d04036eaad3740f58c38788406b692a47'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.pkg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  pkg 'Brook.pkg'

  uninstall pkgutil: 'com.txthinking.base.pkg'
end
