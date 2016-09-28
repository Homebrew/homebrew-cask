cask 'freeze' do
  version '2.6'
  sha256 '241a47bdaae7c23d5b15e854db0a28ae545b0c7aa0ec9e3a0a7f2fa0f10f7efb'

  url 'https://www.freezeapp.net/download/Freeze.zip'
  appcast 'https://www.freezeapp.net/appcast.xml',
          checkpoint: 'd8b24ff523f3cbb555d884908588f0c073d719e0190c928fe5dcba7b53080e85'
  name 'Freeze'
  homepage 'https://www.freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
