cask 'bose-soundtouch' do
  version '13.0.11.16439'
  sha256 'af75c51c01f004747d43cebf195fe337feeccaa6bd8e8e95b2b1ea019499c0da'

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
