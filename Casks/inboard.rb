cask 'inboard' do
  version '1.0.10-289'
  sha256 'd0bd35a2977c9b519d4657516a47ece34bd8b3db90614d7cf2e6ad79ab2cf890'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          checkpoint: '61e43b9c8b46c6d18440721ad263f29bce73e25a1bc06f1824ab45481b9c3018'
  name 'Inboard'
  homepage 'https://inboardapp.com/'

  app 'Inboard.app'
end
