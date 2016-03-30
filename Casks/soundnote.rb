cask 'soundnote' do
  version '0.2.1'
  sha256 'ec56e7aee43038d4cc4f0c44a1831e1ac9340105568af22229c9defbe938d3f9'

  url 'https://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/SoundNote',
          checkpoint: '05e074ad57f8d2c09ec8bf820797132dc79356c1bcd385669211972804f5fb38'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'
  license :isc

  app 'SoundNote.app'
end
