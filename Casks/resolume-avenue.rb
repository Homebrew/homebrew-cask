cask 'resolume-avenue' do
  version '6.0.7'
  sha256 '6edbf4afdf3bf41f503862aac041384f59557f2ccf94c1bd9203a6ed25cfa2bf'

  url "https://resolume.com/download/Resolume_Avenue_#{version.dots_to_underscores}_Installer.dmg"
  appcast 'https://resolume.com/update/avenue_mac.xml',
          checkpoint: '6f87f513b75530818aaf1ddaa78454da3b16cfc0c5f00955621736eca9d5374b'
  name 'Resolume Avenue'
  homepage 'https://resolume.com/'

  pkg 'Resolume Avenue Installer.pkg'

  uninstall pkgutil: 'com.resolume.pkg.ResolumeAvenue*'
end
