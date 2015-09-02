cask :v1 => 'anvil' do
  version '1.1.5'
  sha256 '342c9041dea854d43fd0c9f78305c9e269e10b2f594079acb2af11675c53fa55'

  # herokuapp.com is the official download host as per the vendor homepage
  url 'https://sparkler.herokuapp.com/apps/3/versions/116/download'
  name 'Anvil'
  appcast 'https://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'
  license :mit

  app 'Anvil.app'
end
