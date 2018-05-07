cask 'box-drive' do
  version :latest
  sha256 :no_check

  # e3.boxcdn.net was verified as official when first introduced to the cask
  url 'https://e3.boxcdn.net/box-installers/desktop/releases/mac/Box.pkg'
  name 'Box Drive'
  homepage 'https://www.box.com/drive'

  app 'Box.app'
  pkg 'Box.pkg'

  uninstall quit:   [
                      'com.box.Box-Local-Com-Server',
                      'com.box.desktop',
                      'com.box.desktop.findersyncext',
                      'com.box.desktop.helper',
                      'com.box.desktop.ui',
                    ],
            script: {
                      executable: '/Library/Application Support/Box/uninstall_box_drive',
                    }

  zap trash: [
               '~/Library/Application Support/Box/Box',
               '~/Library/Logs/Box/Box',
             ],
      rmdir: [
               '~/Library/Application Support/Box/Box',
               '~/Library/Containers/com.box.desktop.findersyncext',
             ]

  caveats <<~EOS
    If you currently have Box Sync installed, uninstall Box Sync before installing Box Drive.
  EOS
end
