cask 'bose-soundtouch' do
  version '11.0.12.13555'
  sha256 '58357776167de6c7c603bde71ce157dedb68392f5fb03a07cef921f4f4bc8f35'

  url "https://worldwide.bose.com/downloads/assets/updates/soundtouch_app-m/SoundTouch-#{version}-osx-10.9-installer.app.dmg"
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
