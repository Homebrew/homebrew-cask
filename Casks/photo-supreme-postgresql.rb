cask :v1 => 'photo-supreme-postgresql' do
  version '3'
  sha256 'ed1d669e46cf073a4720224c0f08aca70da2e6c6687be1a9d733bda9e45a5304'


  url 'http://www.idimager.com/Trial/PhotoSupremePostgreSQL_V3.pkg'
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'
  license :commercial

  pkg 'PhotoSupremePostgreSQL_V3.pkg'

# Actually we need >= 10.6.8, but it doesn't look like you can use anything
# other than n.m in the version check
  depends_on :macos => '>= 10.7'

# We need postgresql >=9, but since the default is now at 9.4, might as well
# just do that
  depends_on :formula => 'postgresql'

  uninstall :pkgutil => 'com.idimager.idimagersu'

end
