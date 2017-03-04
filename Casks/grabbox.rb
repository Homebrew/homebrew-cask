cask 'grabbox' do
  version '0.4.2'
  sha256 'e6f92efce8585b58d1b5d9afc4a2187e07bf76c14961aff1b83a8422fb342f2f'

  url "http://grabbox.devsoft.no/updates/GrabBox%20Beta%20v#{version}.zip"
  appcast 'http://grabbox.devsoft.no/appcastBeta.xml',
          checkpoint: '984e696e4034f787eae08c3977eb9a85fd5f8a02756f3b92fde13975f17dc334'
  name 'GrabBox'
  homepage 'http://grabbox.devsoft.no/'

  app 'GrabBox.app'
end
