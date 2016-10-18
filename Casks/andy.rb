cask 'andy' do
  version '46.2.74.108_112'
  sha256 'ae811ed3bdb48835216c39a15f42fae9091a753c99cc047c9160b1558abf7d67'

  url "http://downloads.andyroid.net/installer/v#{version.major}/Andy_v#{version}_OSX.dmg"
  name 'Andy'
  homepage 'https://www.andyroid.net/'

  pkg 'Andy.pkg'

  uninstall pkgutil: 'net.andyroid.andy.player.osx'
end
