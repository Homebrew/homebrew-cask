cask 'murus-menulet' do
  version '1.1'
  sha256 'ecb9e554b6f80cb6f262266efe30adcad043ed135afd0bdfb5e97e3aafae56b0'

  url "https://www.murusfirewall.com/downloads/murus-menulet-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus Menulet.app'

  uninstall delete:     '/usr/local/bin/murusd',
            launchctl:  'it.murus.murusd',
            login_item: 'Murus Menulet',
            quit:       'it.murus.Murus-Menulet'
end
