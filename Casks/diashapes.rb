cask :v1 => 'diashapes' do
  version '0.3.0'
  sha256 '2b858e180f7ed1fff23c0fd7c917ad161b6ed4e561bc7a7ce4d71bd368947925'

  url "http://downloads.sourceforge.net/project/dia-installer/diashapes/#{version}/diashapes-#{version}.dmg"
  homepage 'http://dia-installer.de/'
  license :oss

  app 'Diashapes.app'
end
