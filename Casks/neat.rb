cask 'neat' do
  version '1.5.1.10'
  sha256 '350b9aec6140d9305ef37b630c5ad92d34bcdd65f32847eb34115cdeb0b4aa9f'

  # neatsupport.wpengine.com was verified as official when first introduced to the cask
  url 'https://neatsupport.wpengine.com/wp-content/uploads/helpcenter/software/Neat-Mac.dmg'
  appcast 'https://s3.amazonaws.com/helium-updater/Autoupdate/UPDATE.XML',
          checkpoint: '31e2b5b59bb53c19c10c7c907b3ecdb09b56c122c71e90300b5d18072caa929d'
  name 'Neat'
  homepage 'https://www.neat.com/'

  auto_updates true

  installer script: {
                      executable: "#{staged_path}/Neat-Installer.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }

  uninstall quit:   'com.neat.helium',
            script: {
                      executable: '/Applications/The Neat Company/Neat Smart Organization System/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }

  zap trash: [
               '~/Neat-Helium-Logs',
               '~/Library/Application Support/Neat',
               '~/Library/Caches/Neat',
               '~/Library/Preferences/com.neat.helium.plist',
               '~/Library/Saved Application State/com.neat.helium.savedState',
             ]
end
