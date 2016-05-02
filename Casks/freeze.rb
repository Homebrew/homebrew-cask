cask 'freeze' do
  version '2.1'
  sha256 'cfa2858e21d3e338ec55a783e13b01391364a7db8e911a851b081355ccff781f'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: '1dd16638e8718507eb9a781feeb673c5be14079dc5024fcc74cd7c626c082dd1'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
