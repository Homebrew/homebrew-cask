cask 'itunes-volume-control' do
  version '1.4.10'
  sha256 '2217581e374c53853dfa5dac805214233f37b016ebed313edbb8499d2ff9f70f'

  url 'https://github.com/alberti42/iTunes-Volume-Control/raw/master/iTunes%20Volume%20Control.dmg'
  appcast 'https://github.com/alberti42/iTunes-Volume-Control/releases.atom',
          checkpoint: '16c4f984043ff2321f6be00f0d7b06a5ce87a014747aedcdd5074d9e18e2b56a'
  name 'iTunes Volume Control'
  homepage 'https://github.com/alberti42/iTunes-Volume-Control'
  license :oss

  app 'iTunes Volume Control.app'
end
