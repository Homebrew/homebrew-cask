cask 'bose-soundtouch' do
  version '12.0.10.14848'
  sha256 '333ac935131fb912b8b4de34e69db8a3dd451a04681bb5027f511a6e48565ae4'

  # bose.com was verified as official when first introduced to the cask
  url "https://worldwide.bose.com/downloads/assets/updates/soundtouch/SoundTouch-#{version}-osx-10.9-installer.app.dmg"
  name 'Bose Soundtouch Controller App'
  homepage 'https://www.soundtouch.com'
  license :closed

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
