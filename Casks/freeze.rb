cask 'freeze' do
  version '3.0.1-243'
  sha256 '6142613dd0244aaf992027be19fa9da18827c6ed19b73936352e3b316fa363b5'

  url "https://www.freezeapp.net/download/Freeze-#{version}.zip"
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'e7001b1b8d798114fd1bc7dbc34e062aa11b12e0e5c726f35309c79c71b895b5'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
