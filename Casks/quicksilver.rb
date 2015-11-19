cask :v1 => 'quicksilver' do
  if MacOS.release <= :snow_leopard
    version '1.0.0-16384'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.release <= :lion
    version '1.2.0-16399'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.3.2-16404'
    sha256 'e5e6fd5338ebbcf08e266f6e6daf5a7773d005b18349f377207d8ab6dca3634c'
  end

  url "https://qs0.qsapp.com/plugins/download.php?qsversion=#{version.sub(%r{^.*?-},'')}.dmg"
  name 'Quicksilver'
  homepage 'http://qsapp.com/'
  license :apache

  app 'Quicksilver.app'

  zap :delete => [
                  '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                  '~/Library/Application Support/Quicksilver',
                 ]
end
