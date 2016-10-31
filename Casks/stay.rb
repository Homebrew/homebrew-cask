cask 'stay' do
  version '1.2.6'
  sha256 '70663d1964430c0ea06c00dc654cdde9fea06bb211afec1d4c5a552222aba70f'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.dmg"
  appcast 'https://cordlessdog.com/stay/appcast.xml',
          checkpoint: 'cd7e295947892c42bfc9d3c89c229527200e20befaa7988f0b7416d3faeb650b'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'

  app 'Stay.app'
end
