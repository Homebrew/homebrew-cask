cask 'freedv' do
  version '0.96.6'
  sha256 'e8c42dbb7fc5b8dd88020aa000149185adc5f9583094617966008e5b39d54970'

  url "https://files.freedv.org/OSX/FreeDV-#{version}.dmg"
  name 'FreeDV'
  homepage 'https://freedv.org/'
  license :gpl

  app 'FreeDV.app'
end
