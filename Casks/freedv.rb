cask 'freedv' do
  version '0.96.6'
  sha256 'e8c42dbb7fc5b8dd88020aa000149185adc5f9583094617966008e5b39d54970'

  url "https://files.freedv.org/OSX/FreeDV-#{version}.dmg"
  appcast 'https://files.freedv.org/OSX/',
          checkpoint: '66547d2a6dadf1bb15f97a1ec47c4f4595784399de25bfb8d1e9f273b047f964'
  name 'FreeDV'
  homepage 'https://freedv.org/dvs/'

  app 'FreeDV.app'
end
