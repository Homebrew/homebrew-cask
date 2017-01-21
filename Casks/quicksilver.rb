cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.5.2'
    sha256 'b697960aa032436b8c61120965b7ea78d3e10b2894ef83f19326508c7f85d6a8'
  end

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  app 'Quicksilver.app'

  zap delete: [
                '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                '~/Library/Application Support/Quicksilver',
              ]
end
