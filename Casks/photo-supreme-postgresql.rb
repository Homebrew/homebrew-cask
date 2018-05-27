cask 'photo-supreme-postgresql' do
  version '4'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://trial.idimager.com/PhotoSupremePostgreSQL_V#{version}.pkg"
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  depends_on formula: 'postgresql'

  pkg "PhotoSupremePostgreSQL_V#{version}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
