cask 'copper' do
  version :latest
  sha256 :no_check

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.appfruits.copper/Copper.zip'
  appcast 'https://updates.devmate.com/com.appfruits.copper.xml',
          checkpoint: '165e078d5a0f364870d7586995682b8277bbf79c6e7cfb7e69837d95e4dc94e4'
  name 'Copper'
  homepage 'https://www.copper-app.com/'

  app 'Copper.app'
end
