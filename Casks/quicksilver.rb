cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.5.8'
    sha256 'fc687a674cd1483bf1718fa89ee0e2d23a3ca9a7bad105ae714b4c48b18807c1'
  end

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  appcast 'https://qsapp.com/archives/',
          checkpoint: 'c514430f2367a2b1858806001775e3623bc055d0eeae40be8c792700c4f2436c'
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  auto_updates true

  app 'Quicksilver.app'

  zap trash: [
               '~/Library/Preferences/com.blacktree.Quicksilver.plist',
               '~/Library/Application Support/Quicksilver',
             ]
end
