cask 'photo-supreme-postgresql' do
  version '4.1.0'
  sha256 '0439f51291f4ae9778f2b41b46dbfd229515bb36d4cce66cbdc7ae8b0224336f'

  url "http://trial.idimager.com/PhotoSupremePostgreSQL_V#{version.major}.pkg"
  name 'Photo Supreme with PostreSQL'
  homepage 'http://www.idimager.com/WP/?page_id=20'

  depends_on formula: 'postgresql'

  pkg "PhotoSupremePostgreSQL_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
