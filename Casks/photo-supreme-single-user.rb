cask 'photo-supreme-single-user' do
  version '3'
  sha256 :no_check # required as upstream package is updated in place

  url 'http://www.idimager.com/Trial/PhotoSupreme_V3.pkg'
  name 'Photo Supreme Single User'
  homepage 'http://www.idimager.com/WP/?page_id=20'
  license :commercial

  pkg 'PhotoSupreme_V3.pkg'

  uninstall pkgutil: 'com.idimager.idimagersu'
end
