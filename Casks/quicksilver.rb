cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.5.3'
    sha256 'd7f301d39c798c4f52e4631fbfcae5c12d4b62eacc6e0f58b0f50bd620d4a127'
  end

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  appcast 'https://qsapp.com/archives/',
          checkpoint: '4e287c0db897fbf270eb932527de5f89e3a57e29a60a7130008fb4b85c5d0aac'
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  app 'Quicksilver.app'

  zap delete: [
                '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                '~/Library/Application Support/Quicksilver',
              ]
end
