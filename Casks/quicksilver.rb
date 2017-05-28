cask 'quicksilver' do
  if MacOS.version <= :snow_leopard
    version '1.0.0'
    sha256 '0afb16445d12d7dd641aa8b2694056e319d23f785910a8c7c7de56219db6853c'
  elsif MacOS.version <= :mountain_lion
    version '1.2.0'
    sha256 '08c5aeaa7fe89427bcec30a9700eb0b7484bd68b647776b2c82c95355d1679d4'
  else
    version '1.5.4'
    sha256 '66ba2412541c54b49913d9f669572057ccaa2224d9eed12ca2fa0d86dcfa6288'
  end

  url "https://qsapp.com/archives/downloads/Quicksilver%20#{version}.dmg"
  appcast 'https://qsapp.com/archives/',
          checkpoint: '8d3187dbd857441538361a4f4f9d5e6cca893c6e1bc185bdf3cbc7ef2df01461'
  name 'Quicksilver'
  homepage 'https://qsapp.com/'

  app 'Quicksilver.app'

  zap delete: [
                '~/Library/Preferences/com.blacktree.Quicksilver.plist',
                '~/Library/Application Support/Quicksilver',
              ]
end
