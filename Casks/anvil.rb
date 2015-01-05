cask :v1 => 'anvil' do
  version :latest
  sha256 :no_check

  url 'https://sparkler.herokuapp.com/apps/3/download'
  name 'Anvil'
  appcast 'http://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'
  license :mit

  app 'Anvil.app'
end
