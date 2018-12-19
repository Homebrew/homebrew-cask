cask 'photo-supreme-postgresql' do
  version '4'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://trial.idimager.com/PhotoSupremePostgreSQL_V#{version}.pkg"
  name 'Photo Supreme with PostreSQL'
  homepage 'https://www.idimager.com/home'

  depends_on formula: 'postgresql'

  pkg "PhotoSupremePostgreSQL_V#{version}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
