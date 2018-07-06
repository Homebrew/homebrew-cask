cask 'box-drive' do
  version :latest
  sha256 :no_check

  # e3.boxcdn.net was verified as official when first introduced to the cask
  url 'https://e3.boxcdn.net/box-installers/desktop/releases/mac/Box.pkg'
  name 'Box Drive'
  homepage 'https://www.box.com/drive'

  conflicts_with cask: 'box-sync'

  pkg 'Box.pkg'

  uninstall pkgutil:   'com.box.desktop.installer.*',
            launchctl: 'com.box.desktop.*',
            script:    '/Library/Application Support/Box/uninstall_box_drive',
            quit:      [
                         'com.box.Box-Local-Com-Server',
                         'com.box.desktop',
                         'com.box.desktop.findersyncext',
                         'com.box.desktop.helper',
                         'com.box.desktop.ui',
                       ]

  zap trash: [
               '~/Library/Application Support/Box/Box',
               '~/Library/Logs/Box/Box',
               '~/Library/Containers/com.box.desktop.findersyncext',
             ]
end
