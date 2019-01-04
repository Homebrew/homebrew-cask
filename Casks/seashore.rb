cask 'seashore' do
  version '2.1.0'
  sha256 '79a54772ad343363539bc2909d0c0b453f9ef7de2be20bdb2420d89559d5c093'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
