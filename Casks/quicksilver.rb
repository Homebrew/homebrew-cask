cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.5.9'
    sha256 'c51412eb3d87743246d06f5b4687b6982ffc955565fb2d1331caa8e2c69bcc0a'
  end

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  appcast 'https://qsapp.com/archives/',
          checkpoint: 'eef69e586c9a1ddc88f6c5440205dcd5e8aa1bb34beaa22918f703360e3125a6'
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  auto_updates true

  app 'Quicksilver.app'

  zap trash: [
               '~/Library/Preferences/com.blacktree.Quicksilver.plist',
               '~/Library/Application Support/Quicksilver',
             ]
end
