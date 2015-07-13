cask :v1 => 'anvil' do
  version '1.1.4'
  sha256 '757f64ec4b569eef104300fe111d1180fc5e38e0a83e41954b46e209af8a5c1b'

  # herokuapp.com is the official download host as per the vendor homepage
  url "https://sparkler.herokuapp.com/apps/3/versions/#{version.gsub('.','')}/download"
  name 'Anvil'
  appcast 'https://sparkler.herokuapp.com/apps/3/updates.xml'
  homepage 'http://anvilformac.com/'
  license :mit

  app 'Anvil.app'
end
