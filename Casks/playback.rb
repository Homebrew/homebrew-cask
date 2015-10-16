cask :v1 => 'playback' do
  version '1.3.1'
  sha256 'bffca6b43363b8a0a511eae6b3376d0bd0fbcf2c04a6d810cf09acbcd087bb38'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mafintosh/playback/releases/download/v#{version}/Playback.app.zip"
  appcast 'https://github.com/mafintosh/playback/releases.atom'
  name 'Playback'
  homepage 'https://mafintosh.github.io/playback/'
  license :mit

  app 'Playback.app'
end
