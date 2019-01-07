cask 'seashore' do
  version '2.1.4'
  sha256 '80bc66a1a7afa4e9f37e4d69da7b8d3b4a9ca324674de48cc15998bf47dbdab0'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
