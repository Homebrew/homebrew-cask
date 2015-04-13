cask :v1 => 'playback' do
  version '1.2.0'
  sha256 '442d69ab0e08531bfda5ed66f9204243f286a14839c3351cef06c75f1d072eb7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mafintosh/playback/releases/download/v#{version}/Playback.app.zip"
  appcast 'https://github.com/mafintosh/playback/releases.atom'
  name 'Playback'
  homepage 'https://mafintosh.github.io/playback/'
  license :mit

  app 'Playback.app'
end
