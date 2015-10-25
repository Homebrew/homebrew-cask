cask :v1 => 'hobo' do
  version '1.1.5'
  sha256 '7ecdf07aa0b9f396f5323e3ef134b5257a13ac5621195f665480158c82dd8eec'

  # netdna-ssl.com is the official download host per the vendor homepage
  url "https://downloads-clickonideas.netdna-ssl.com/hobo/hobo_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=31'
  name 'Hobo'
  homepage 'https://clickontyler.com/hobo/'
  license :commercial

  app 'Hobo.app'
end
