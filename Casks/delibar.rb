cask 'delibar' do
  version '1.6'
  sha256 '960714a35c659dc327f73752b20a53c25b3aa77da578e457b187e9ff76cac5c8'

  # shinyfrog.net was verified as official when first introduced to the cask
  url 'http://static.shinyfrog.net/downloads/delibar/Delibar.zip'
  appcast 'http://apps.shinynode.com/apps/delibar_appcast.xml',
          checkpoint: '8930f1104bc7b714d0f07040aa0bbb661b182a2d8f8fd1e69c945e2674037802'
  name 'Delibar'
  homepage 'http://www.delibarapp.com/'
  license :freemium

  app 'Delibar.app'
end
