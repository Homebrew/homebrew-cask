cask 'copper' do
  version '1.3.1'
  sha256 'dc057ce3621ff1bb9a075365b8a654da68ab5b7fd0f7143f79dff4cf37c676e5'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.appfruits.copper/Copper.zip'
  appcast 'https://updates.devmate.com/com.appfruits.copper.xml'
  name 'Copper'
  homepage 'https://www.copper-app.com/'

  app 'Copper.app'
end
