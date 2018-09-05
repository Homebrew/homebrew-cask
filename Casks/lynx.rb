cask 'lynx' do
  version :latest
  sha256 :no_check

  url 'https://download.saharasupport.com/lynx/production/macx/Lynx.pkg'
  name 'Lynx by Clevertouch'
  homepage 'https://download.saharasupport.com/'

  pkg 'Lynx.pkg'

  uninstall pkgutil: 'uk.co.cleverproducts.lynx'
end
