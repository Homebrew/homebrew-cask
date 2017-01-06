cask 'freeze' do
  version '3.0-239'
  sha256 '27c1d8c8150fa75cb38a49a84488966f2ee96689c76dfb953b6b181fdb143c5c'

  url "https://www.freezeapp.net/download/Freeze-#{version}.zip"
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'e7001b1b8d798114fd1bc7dbc34e062aa11b12e0e5c726f35309c79c71b895b5'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'

  app 'Freeze.app'
end
