cask :v1 => 'diashapes' do
  version '0.3.0'
  sha256 '2b858e180f7ed1fff23c0fd7c917ad161b6ed4e561bc7a7ce4d71bd368947925'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/dia-installer/diashapes/#{version}/diashapes-#{version}.dmg"
  name 'Dia'
  homepage 'http://dia-installer.de/'
  license :gpl

  app 'Diashapes.app'
end
