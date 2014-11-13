cask :v1 => 'anvil' do
  version :latest
  sha256 :no_check

  url 'https://sparkler.herokuapp.com/apps/3/download'
  appcast 'http://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'
  license :unknown

  app 'Anvil.app'
end
