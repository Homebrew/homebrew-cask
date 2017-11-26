cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.5.6'
    sha256 '526c9ea6d4b23f0e95f78dac5ee55f7176a5a2cc53c79f0ec1ea8c1ffb1166fb'
  end

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  appcast 'https://qsapp.com/archives/',
          checkpoint: '8567448f8f1f3be984b501b5c863abd4cc8e7d9cc968b77f22afc6e4eff7cc4a'
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  app 'Quicksilver.app'

  zap trash: [
               '~/Library/Preferences/com.blacktree.Quicksilver.plist',
               '~/Library/Application Support/Quicksilver',
             ]
end
