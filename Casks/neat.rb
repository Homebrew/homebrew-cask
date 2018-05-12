cask 'neat' do
  version '1.5.2.11'
  sha256 'c00a69a137b0515e621abe3df939c3469b30e6f0480c5c2aec71df4f770b9374'

  # neatsupport.wpengine.com was verified as official when first introduced to the cask
  url 'https://neatsupport.wpengine.com/wp-content/uploads/helpcenter/software/Neat-Mac.dmg'
  appcast 'https://s3.amazonaws.com/helium-updater/Autoupdate/UPDATE.XML',
          checkpoint: 'c09e03bd27235fabd426d0e35dc1847783d5b015fc59b5beecac3dab100afdeb'
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
