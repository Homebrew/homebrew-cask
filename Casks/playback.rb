cask :v1 => 'playback' do
  version '1.3.0'
  sha256 'e161c0589f57f840428e946f3d12301377cdcb9aaba79a5f39c1a5048314b944'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mafintosh/playback/releases/download/v#{version}/Playback.app.zip"
  appcast 'https://github.com/mafintosh/playback/releases.atom'
  name 'Playback'
  homepage 'https://mafintosh.github.io/playback/'
  license :mit

  app 'Playback.app'
end
