cask 'astrill' do
  version :latest
  sha256 :no_check

  url 'http://download.astrill.com/astrill-setup-mac.dmg'
  name 'Astrill'
  homepage 'https://www.astrill.com'

  pkg 'Astrill Setup.mpkg'

  uninstall pkgutil: 'com.Astrill.app'
end
