cask 'astrill' do
  version :latest
  sha256 :no_check

  url 'https://www.astrill.com/downloads/astrill-setup-mac.pkg'
  name 'Astrill'
  homepage 'https://www.astrill.com/'

  pkg 'astrill-setup-mac.pkg'

  uninstall pkgutil: 'com.astrill.pkg.astrill'
end
