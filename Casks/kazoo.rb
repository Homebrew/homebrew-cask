cask 'kazoo' do
  version :latest
  sha256 :no_check

  url 'https://oss.linn.co.uk/Releases/Kazoo/Davaar/kazoo_latest_osx.pkg'
  name 'Kazoo'
  homepage 'https://oss.linn.co.uk/trac/wiki/Kazoo'

  pkg 'kazoo_latest_osx.pkg'

  uninstall pkgutil: 'uk.co.linn.KazooMac'
end
