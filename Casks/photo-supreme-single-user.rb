cask 'photo-supreme-single-user' do
  version '3'
  sha256 '773c691f3e9574b86ebd4c612c6eb3b15fa9445f3fe3e7a4a31ea4f6cdd490cf'

  url "http://www.idimager.com/Trial/PhotoSupreme_V#{version}.pkg"
  name 'Photo Supreme Single User'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  pkg "PhotoSupreme_V#{version}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
