cask 'photo-supreme-single-user' do
  version '4'
  sha256 'a127ccaf4803eaea13258b8a65ef0977c166fc1db2586aff76817719d9360f30'

  url "http://trial.idimager.com/PhotoSupreme_V#{version}.pkg"
  name 'Photo Supreme Single User'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  pkg "PhotoSupreme_V#{version}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
