cask 'photo-supreme-postgresql' do
  version '3'
  sha256 'dfb3dbaba71f834f56fcab55650ea972e2714a400f2aa9d7a371d5f30e153c72'

  url "http://www.idimager.com/Trial/PhotoSupremePostgreSQL_V#{version}.pkg"
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  depends_on macos: '>= :lion'
  depends_on formula: 'postgresql'

  pkg "PhotoSupremePostgreSQL_V#{version}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
