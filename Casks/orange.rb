cask :v1 => 'orange' do
  version '2.7.8-a81a512'
  sha256 '6c891db9e76792bce548f2b8057bbc7f63019b3c7824bd1ec97d5277225fb333'

  url "http://orange.biolab.si/download/files/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
