cask 'bose-soundtouch' do
  version '13.0.13.16800'
  sha256 '8e0bf45c017f074c449e4031a920b5344bc82a8e1ffac32beadd0274b8197f8d'

  # bose.com was verified as official when first introduced to the cask
  url "https://worldwide.bose.com/downloads/assets/updates/soundtouch/SoundTouch-#{version}-osx-10.9-installer.app.dmg"
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com'

  depends_on macos: '>= :mavericks'

  installer script: 'SoundTouch-osx-installer.app/Contents/MacOS/installbuilder.sh',
            args:   %w[--mode unattended],
            sudo:   true

  uninstall script: {
                      executable: '/Applications/SoundTouch/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       %w[--mode unattended],
                      sudo:       true,
                    }
end
