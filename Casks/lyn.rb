cask 'lyn' do
  version '1.7'
  sha256 '8479c5cb2f88fc42c257ff3e3fe3b67765c09ce04abcd8a94db66d897877cb32'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '2ab8a5aca34f55b8c81ab9115e78359fd0b57ebc5f40e4a8ab0303193771376b'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
