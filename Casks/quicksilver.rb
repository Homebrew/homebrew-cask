cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0-16384'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0-16399'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.4.2-16410'
    sha256 '5fd42ba980097109f59facf4efab67edce569f75e3a8291991ad25f31b937a46'
  end

  url "https://qs0.qsapp.com/plugins/download.php?qsversion=#{version.sub(%r{^.*?-}, '')}.dmg"
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  app 'Quicksilver.app'

  zap delete: [
                '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                '~/Library/Application Support/Quicksilver',
              ]
end
