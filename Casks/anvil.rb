cask :v1 => 'anvil' do
  version :latest
  sha256 :no_check

  # herokuapp.com is the official download host as per the vendor homepage
  url 'https://sparkler.herokuapp.com/apps/3/download'
  name 'Anvil'
  appcast 'https://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'
  license :mit

  app 'Anvil.app'
end
