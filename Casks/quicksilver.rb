cask :v1 => 'quicksilver' do
  if MacOS.release <= :snow_leopard
    version '1.0.0-16384'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.release <= :lion
    version '1.2.0-16399'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.3.1-16403'
    sha256 'c630c6fe386c653e17734a5def40e0d86afa47884602c810510cb180e3d2bcce'
  end

  url "http://cdn.qsapp.com/plugins/files/com.blacktree.Quicksilver__#{version.sub(%r{^.*?-},'')}.dmg"
  name 'Quicksilver'
  homepage 'http://qsapp.com/'
  license :apache

  app 'Quicksilver.app'

  zap :delete => [
                  '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                  '~/Library/Application Support/Quicksilver',
                 ]
end
