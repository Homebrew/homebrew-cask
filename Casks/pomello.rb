cask 'pomello' do
  version '0.10.11'
  sha256 'e1406108de8301d162159d412a74672d709471b53b9ab039f68f31f6a52ff319'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
