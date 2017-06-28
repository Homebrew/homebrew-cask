cask 'murus-menulet' do
  version '1.1'
  sha256 'ecb9e554b6f80cb6f262266efe30adcad043ed135afd0bdfb5e97e3aafae56b0'

  url "https://www.murusfirewall.com/downloads/murus-menulet-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus Menulet.app'

  zap delete: [
                '/Library/LaunchDaemons/it.murus.murusd.plist',
                '/usr/local/bin/murusd',
              ]
end
