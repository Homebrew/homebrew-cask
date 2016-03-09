cask 'diashapes' do
  version '0.3.0'
  sha256 '2b858e180f7ed1fff23c0fd7c917ad161b6ed4e561bc7a7ce4d71bd368947925'

  # sourceforge.net/project/dia-installer/diashapes was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/dia-installer/diashapes/#{version}/diashapes-#{version}.dmg"
  name 'Dia'
  homepage 'http://dia-installer.de/'
  license :gpl

  app 'Diashapes.app'
end
