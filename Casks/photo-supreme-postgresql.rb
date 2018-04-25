cask 'photo-supreme-postgresql' do
  version '4'
  sha256 '5adb6a010e48398cbdf84a11acc8581ef2ce757cefa236b201f7cf97c2a8e7c3'

  url "http://trial.idimager.com/PhotoSupremePostgreSQL_V#{version}.pkg"
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  depends_on formula: 'postgresql'

  pkg "PhotoSupremePostgreSQL_V#{version}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
