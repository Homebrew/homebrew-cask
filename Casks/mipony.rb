cask 'mipony' do
  version :latest
  sha256 :no_check

  url 'http://www.mipony.net/downloadmac/'
  name 'Mipony'
  homepage 'http://www.mipony.net/'

  pkg 'Mipony-Installer.pkg', allow_untrusted: true

  uninstall pkgutil: 'net.installer.mipony.*'
end
