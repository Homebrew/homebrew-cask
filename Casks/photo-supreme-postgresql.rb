cask :v1 => 'photo-supreme-postgresql' do
  version '3'
  sha256 :no_check

  url 'http://www.idimager.com/Trial/PhotoSupremePostgreSQL_V3.pkg'
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'
  license :commercial

  pkg 'PhotoSupremePostgreSQL_V3.pkg'

  uninstall :pkgutil => 'com.idimager.idimagersu'

  depends_on :macos => '>= 10.7'
  depends_on :formula => 'postgresql'
end
