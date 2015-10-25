cask :v1 => 'photo-supreme-postgresql' do
  version '3'
  sha256 'ed1d669e46cf073a4720224c0f08aca70da2e6c6687be1a9d733bda9e45a5304'

  url 'http://www.idimager.com/Trial/PhotoSupremePostgreSQL_V3.pkg'
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'
  license :commercial

  pkg 'PhotoSupremePostgreSQL_V3.pkg'

  uninstall :pkgutil => 'com.idimager.idimagersu'

  depends_on :macos => '>= 10.7'
  depends_on :formula => 'postgresql'
end
