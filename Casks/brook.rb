cask 'brook' do
  version '20200502'
  sha256 '264a726cc575bb56f07b4245f19e63baeef0e6786825fef3ccd103958d2ffdd7'

  url "https://github.com/txthinking/brook/releases/download/v#{version}/Brook.pkg"
  appcast 'https://github.com/txthinking/brook/releases.atom'
  name 'Brook'
  homepage 'https://github.com/txthinking/brook'

  pkg 'Brook.pkg'

  uninstall pkgutil: 'com.txthinking.base.pkg'
end
