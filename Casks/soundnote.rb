cask 'soundnote' do
  version '0.2.1'
  sha256 'ec56e7aee43038d4cc4f0c44a1831e1ac9340105568af22229c9defbe938d3f9'

  url 'https://download.mrgeckosmedia.com/SoundNote.zip'
  appcast 'https://mrgeckosmedia.com/applications/releasenotes/SoundNote',
          checkpoint: '3b86d61d96906e20e4d60b2806dd287b2f314f89a29974b218b845a8624e357b'
  name 'SoundNote'
  homepage 'https://mrgeckosmedia.com/applications/info/SoundNote'

  app 'SoundNote.app'
end
